programa
{
	
	inclua biblioteca Util
	funcao inicio()
	{
		const cadeia CABECALHO = "Victor's Amazing Watch!\nFeito por Victor Siqueira\n\n"
		inteiro contS = 1000
		inteiro contM = 1000
		inteiro contH = 1000
		inteiro contDia = 0
		inteiro contMes = 0
		inteiro contAno = 0
		inteiro bissexto = 0

		escreva("Victor's Amazing Watch!")
		Util.aguarde(1300)
		escreva("\nFeito por Victor Siqueira")
		Util.aguarde(2000)
		limpa()
		
		enquanto(contAno <= 0)
		{
			escreva(CABECALHO)
			escreva("Digite o Ano: ")
			leia(contAno)
			limpa()
			se(contAno <=0)
			{
				escreva("Erro.\nDigite um ano válido.")
				Util.aguarde(2000)
				limpa()
			}
			
		bissexto = contAno % 4
		
		}		
		enquanto(contMes <= 0 ou contMes > 12)
		{
			escreva(CABECALHO)
			escreva("Digite o Mes: ")
			leia(contMes)
			limpa()
			se(contMes <=0 ou contMes > 12)
			{
				escreva("Erro.\nDigite um mês válido. (1 - 12)")
				Util.aguarde(2000)
				limpa()
			}
		}
		enquanto(contDia <= 0 ou contDia > 31)
		{
			escreva(CABECALHO)
			escreva("Digite o Dia: ")
			leia(contDia)
			limpa()
			se(contDia <= 0 ou contDia > 31)
				{
					escreva("Erro.\nDigite um dia válido. (1 - 31)")
					Util.aguarde(2000)
					limpa()
				}
		}
		enquanto(contDia > 30 e (contMes == 2 ou contMes == 4 ou contMes == 6 ou contMes == 9 ou contMes == 11))
		{
			escreva("Erro.\nDigite um dia válido. (1 - 30 para o mês escolhido)")
			Util.aguarde(2000)
			limpa()
			escreva(CABECALHO)
			escreva("Digite o Dia: ")
			leia(contDia)
			limpa()
		}
		enquanto(contDia > 29 e contMes == 2)
		{
			escreva("Erro.\nDigite um dia válido. (1 - 29)")
			Util.aguarde(2000)
			limpa()
			escreva(CABECALHO)
			escreva("Digite o Dia: ")
			leia(contDia)
			limpa()
		}
		enquanto(contDia >= 29 e bissexto != 0 e contMes == 2)
		{
			escreva("Erro.\nDigite um dia válido. (1 - 28)")
			Util.aguarde(2000)
			limpa()
			escreva(CABECALHO)
			escreva("Digite o Dia: ")
			leia(contDia)
			limpa()
		}
		enquanto(contH < 0 ou contH > 23)
		{
			escreva(CABECALHO)
			escreva("Digite as Horas: ")
			leia(contH)
			limpa()
			se(contH < 0 ou contH > 23)
			{
				escreva("Erro.\nDigite o valor de hora válida. (0 - 23)")
				Util.aguarde(2000)
				limpa()
			}
		}
		enquanto(contM < 0 ou contM > 59)
		{
			escreva(CABECALHO)
			escreva("Digite os Minutos: ")
			leia(contM)
			limpa()
			se(contM < 0 ou contM > 59)
			{
				escreva("Erro.\nDigite o valor de minuto válido. (0 - 59)")
				Util.aguarde(2000)
				limpa()
			}
		}
		enquanto(contS < 0 ou contS > 59)
		{
			escreva(CABECALHO)
			escreva("Digite os Segundos: ")
			leia(contS)
			limpa()
			se(contS < 0 ou contS > 59)
			{
				escreva("Erro.\nDigite o valor de segundo válido. (0 - 59)")
				Util.aguarde(2000)
				limpa()
			}
		}
		
		escreva(contDia + "/" + contMes + "/" + contAno+ "\n"+ contH + ":" + contM + ":" + contS)

		enquanto(contS < 60)
		{
			bissexto = contAno % 4
			
			limpa()
			escreva(contDia + "/" + contMes + "/" + contAno+ "\n"+ contH + ":" + contM + ":" + contS)
			contS = contS + 1
			Util.aguarde(1000)
			
			se(contS == 60)
			{
				contM = contM + 1
				contS = 0
			}
			se(contM == 60)
			{
				contH = contH + 1
				contM = 0
				contS = 0
			}
			se(contH == 24)
			{
				contDia = contDia + 1
				contH = 0
				contM = 0
				contS = 0
			se(contDia == 32 e (contMes == 1 ou contMes == 3 ou contMes == 5 ou contMes == 7 ou contMes == 8 ou contMes == 10 ou contMes == 12))
			{
				contMes = contMes + 1
				contDia = 1
				contH = 0
				contM = 0
				contS = 0
			}
			se(contDia == 31 e (contMes == 4 ou contMes == 6 ou contMes == 9 ou contMes == 11))
			{
				contMes = contMes + 1
				contDia = 1
				contH = 0
				contM = 0
				contS = 0
			}
			se(contDia == 30 e contMes == 2 e bissexto == 0)
			{
				contMes = contMes + 1
				contDia = 1
				contH = 0
				contM = 0
				contS = 0
			} 
			se(contDia == 29 e contMes == 2 e bissexto != 0)
			{
				contMes = contMes + 1
				contDia = 1
				contH = 0
				contM = 0
				contS = 0
			} 
			se(contMes == 13)
			{
				contAno = contAno + 1
				contMes = 1
				contDia = 1
				contH = 0
				contM = 0
				contS = 0
			}	
			}
		}							
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */