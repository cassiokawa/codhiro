
class MyMailer < ActionMailer::Base

    def mandrill_client
        @mandrill_client ||= Mandrill::API.new 'CZk2Ch4h1CQJoNy1b7zdHA'
    end

    def new_user(user)
        template_name = "novo-usuario"
        template_content =[]
        message = {
            to: [{email: "#{user.email}"}],
            subject: "Bem vindo ao projeto Supernova",
            merge_vars: [
                {
                    rcpt: user.email,
                    vars: [{name: "USER_NAME", content: user.name }]

                }
            ]

        }

        mandrill_client.messages.send_template template_name, template_content, message
    end


end
