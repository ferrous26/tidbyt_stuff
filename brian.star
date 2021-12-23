load("render.star", "render")
load("time.star", "time")

def main(config):
    timezone = config.get("timezone") or "America/New_York"
    now = time.now().in_location(timezone)

    return render.Root(
        delay = 500,
        child = render.Column(
          main_align = "space_evenly",
          cross_align = "centered",


          children = [

            render.Box(
              color = "#000000",
              height = 10,
              child = render.Text(
                content = "Hello, Brian",
                color = "#800000",
                font = "tom-thumb"
              ),
            ),

            render.Box(
              color = "#ffffff",
              child = render.Animation(
                  children = [
                      render.Text(
                          content = "%X:%X" % (now.hour, now.minute),
                          font = "6x13",
                          color = "#00d700"
                      ),
                      render.Text(
                          content = "%X %X" % (now.hour, now.minute),
                          font = "6x13",
                          color = "#00af00"
                      ),
                  ],
              ),
          ),
        ],
    )
)
