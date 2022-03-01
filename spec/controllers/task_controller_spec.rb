# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  include Devise::Test::ControllerHelpers
  render_views

  login_user

    it 'saves the task' do
      task = FactoryBot.create(:task)
      task.user_id = 1
      expect(task.user_id == 1)
    end

    it 'redirect to index' do
      redirect_to :index
      expect(response.status).to eq(200)
    end

    context 'with invalid params' do
      let(:tasks_params) do
        { number: -1 }
      end

      it 'doesnt save' do
        expect { subject }.not_to change(Task, :count)
      end
    end

    it "delete task" do
      task = FactoryBot.create(:task)
      task.user_id = 1
      task.destroy
      task.text == nil
    end
  end
