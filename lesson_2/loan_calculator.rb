loan_amount = ''
yearly_interest_rate = ''
monthly_interest_rate = ''
year_loan_duration = ''
month_loan_duration = ''

def prompt(message)
  puts "=> #{message}"
end

def loan_format(amount)
  num_groups = amount.to_s.chars.to_a.reverse.each_slice(3)
  num_groups.map(&:join).join(',').reverse
end

loop do
  # Intro MSG - "Welcome to the Loan Calculator!"
  prompt('Welcome to the Loan Calculator!')

  # prompt for loan amount
  prompt('Enter the loan amount:')

  loop do
    loan_amount = gets.chomp
    if loan_amount.empty? || loan_amount.to_i <= 0
      prompt('Please enter a positive number')
    else
      break
    end
  end

  loan_amount = loan_amount.to_i
  loan_amount_with_commas = loan_format(loan_amount)

  # prompt for APR as % per year
  prompt('Enter the the APR (yearly interest rate):')

  loop do
    yearly_interest_rate = gets.chomp
    if yearly_interest_rate.empty? || yearly_interest_rate.to_f <= 0
      prompt('Please enter a valid number')
    else
      break
    end
  end

  # convert to float and monthly_interest_rate
  monthly_interest_rate = (yearly_interest_rate.to_f / 12) / 100

  # prompt for loan duration in years
  prompt('Enter the loan term in years:')

  loop do
    year_loan_duration = gets.chomp
    if year_loan_duration.empty? || year_loan_duration.to_i <= 0
      prompt('Please enter a valid number')
    else
      break
    end
  end

  # convert to month_loan_duration.to_i
  month_loan_duration = (year_loan_duration.to_i * 12)

  # Calculate monthly payment and truncate to 2 decimal values
  monthly_payment = loan_amount * (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-month_loan_duration)))
  monthly_payment = monthly_payment.truncate(2)

  prompt("The monthly payment is $#{monthly_payment}")
  prompt("for a $#{loan_amount_with_commas} loan")
  prompt("with a #{yearly_interest_rate}% interest rate")
  prompt("and term of #{year_loan_duration} years.")

  prompt('Calculate another loan payment?')
  answer = gets.chomp

  break unless answer.downcase == 'y'
end

prompt('Thank you for using the loan calculator!')
prompt('Goodbye!')
