require 'rails_helper'

describe 'routing to surveys', type: :routing do
  it 'has a slug that is survey name' do
    expect(get: '/surveys/income').to route_to(
      controller: 'surveys',
      action: 'show',
      id: 'income')
  end
end
