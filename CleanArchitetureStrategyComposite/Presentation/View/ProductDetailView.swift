//
//  ProductDetailView.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 13/11/25.
//

import SwiftUI

struct ProductDetailView: View {
    @State private var vm: ProductDetailViewModel
    @State private var showSheet = false
    @State private var selectedOption: String = ""
    @State private var payed = false
    let id: UUID
    var paymentContext = PaymentContext()
    let paymentOptions: [String] = ["Cartão de Débito", "Cartão de Crédito", "Pix"]
    
    init(id: UUID) {
        self.id = id
        let productRepository = ProductRepositoryImpl()
        let getProductById = GetProductByIdImpl(repository: productRepository)
        let getProductPath = GetProductPathImpl(repository: productRepository)
		_vm = State(
			initialValue: ProductDetailViewModel(
				getProductByIdUseCase: getProductById,
				getProductPathUseCase: getProductPath
			)
		)
    }
    
    
    var body: some View {
        VStack(spacing: 20) {
            if let product = vm.product {
                Image(systemName: "cart")
                    .font(.system(size: 80))
                    .foregroundStyle(.blue)
                
                VStack(spacing: 8) {
                    Text(product.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    
					Text(vm.productPathString)
						.font(.title3)
						.fontWeight(.light)
						.multilineTextAlignment(.center)
                }
                
                Text(product.price, format: .currency(code: "BRL"))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.primary)
                
                Button("Comprar") {
                    showSheet = true
                }
                .buttonStyle(BorderedButtonStyle())
                
                Spacer()
            } else if vm.isLoading {
                ProgressView("Carregando...")
            } else {
                Text("Produto não encontrado")
                    .foregroundStyle(.secondary)
            }
        }
        .padding(16)
        .navigationTitle("Produto")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            vm.fetchInfo(id: id)
        }
        .sheet(isPresented: $showSheet, content: {
            if !payed {
                Form {
                    Picker("Escolha uma forma de Pagamento", selection: $selectedOption) {
                        ForEach(paymentOptions, id: \.self) { option in
                            Text(option)
                        }
                    }
                    .pickerStyle(.inline)
                    Section {
                        Button("Pagar") {
                            switch selectedOption {
                            case "Cartão de Débito":
                                paymentContext.setStrategy(DebitStrategy())
                            case "Cartão de Crédito":
                                paymentContext.setStrategy(CreditStrategy())
                            case "Pix":
                                paymentContext.setStrategy(PixStrategy())
                            default:
                                break
                            }
                            payed = paymentContext.pay(amount: 100)
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                    }
                }
                .presentationDetents([.height(250)])
                .presentationDragIndicator(.hidden)
            }
            else {
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 100))
                    .foregroundStyle(.green)
                    .presentationDetents([.height(250)])
                Text("Compra Concluida!")
                    .font(.title)
            }
        })
        .padding(32)
        .presentationDetents([.height(250)])
        .presentationDragIndicator(.visible)
    }
}

