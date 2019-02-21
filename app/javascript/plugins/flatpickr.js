import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"



// flatpickr(".datepicker", {
//   dateFormat: "Y-m-d",
//         disable: [
//             {
//                 from: "2010-04-01",
//                 to: Date.now()
//             }
//           ]


// })
flatpickr("#start_at", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#end_date"})],
   dateFormat: "Y-m-d",
        disable: [
            {
                from: "2010-04-01",
                to: Date.now()
            }
          ]
})



