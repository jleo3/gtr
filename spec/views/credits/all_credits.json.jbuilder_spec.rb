require "spec_helper"

describe "credits rendering" do


  it "will render creditor" do
    2.times { |x| Credit.make! }
    @credits = Credit.all

    render "credits/all_credits"

    expect(rendered).to match(@credits.first.creditor)
  end
end


=begin
describe 'user rendering' do
    let(:current_user) { User.new(id: 1, email: 'foo@bar.com') }

      before do
            view.stub(:current_user).and_return(current_user)
              end

        it 'does something' do
              render 'api/users/user', user: current_user

                  expect(rendered).to match('foo@bar.com')
                    end
end
=end
