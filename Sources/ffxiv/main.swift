import Commander

let main = Group { root in // ffxiv
    root.addCommand("eqp", Group { eqp in
        eqp.command("test") {
            print("eqp test")
        }
    })
}

main.run()
