## How to interact with the MSTG-Hacking-Playground UI
 
### Buttons on the screen

Every button is an android.support.v7.widget.AppCompatButton, and it is possible to go through all of them just incrementing the `index` value of the command

 `query("android.support.v7.widget.AppCompatButton index:0")`
 
 In example if we want to query the first element: __OMTG DATAST 001 BADENCRYPTION__, from the calabash-android console we will have:
 
```
 irb(main):017:0> query("android.support.v7.widget.AppCompatButton index:0")
[
    [0] {
                     "class" => "android.support.v7.widget.AppCompatButton",
               "description" => "android.support.v7.widget.AppCompatButton{f795b5f VFED..C.. ........ 0,158-1080,284}",
                       "tag" => nil,
                        "id" => nil,
                      "text" => "OMTG-DATAST-001-BadEnryption",
                   "visible" => true,
                      "rect" => {
              "height" => 126,
               "width" => 1080,
                   "y" => 232,
                   "x" => 0,
            "center_x" => 540,
            "center_y" => 295
        },
                   "enabled" => true,
        "contentDescription" => nil
    }
]
```

### ADB and interaction with the emulator/device

Every feature that is developed is a standard Ruby function and, therefore, we can use every Ruby syntax to achieve our goal. Because we want to interact with the OS using the Android tools, we need to execute commands through the docker container and get the results back.

Ruby has a built in function called `%x(cmd)` that allows to execute commands on the hos machine (in our case the docker container)

So in example:

```
%x(adb logcat -b #{log} -c)

```  

will execute the adb command through the docker container, and our function will look like: 

```
Given /^I clean "(.*)" the application log$/ do |log|
  %x(adb logcat -b #{log} -c)
end

```

 