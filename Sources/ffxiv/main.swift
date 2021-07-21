import Commander

let main = Group { root in // ffxiv
    root.addCommand("eqp", Group { eqp in
      //  eqp.command("test") {
         //   print("eqp test")
      //  }
        eqp.command("diff"){
            print("eqp diff")
        }
        eqp.command("list"){
            print("eqp list")
        }
        eqp.command("show"){
            print("eqp showID:9fb09bdf697")
        }
    })
}

main.run()
