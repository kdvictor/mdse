import QtQuick
import QtQuick.Controls

Window
{
    width: 1080
    height: 620
    visible: true
    title: "MDSE"
    id:root

    Rectangle
    {
        id: rect_root
        width: root.width
        height: root.height

        //渐变色
        gradient: Gradient
        {
            GradientStop
            {
                position: 0
                color: "#4158d0"
            }

            GradientStop
            {
                position: 1
                color: "#c850c0"
            }

            orientation:Gradient.Horizontal
        }

        Column
        {
            id:col_root
            spacing: 10
            padding: 10

            Rectangle
            {
                id:rect_toolbar
                height: 40
                width: root.width - 2*col_root.padding
                color:"#22ffffff"

                Row
                {
                    spacing:10
                    Button
                    {
                        height:rect_toolbar.height
                        text:"导入文件"
                    }

                    Button
                    {
                        height:rect_toolbar.height
                        text:"计算"
                    }
                }

            }

            Row
            {
                id:row_moluculer
                spacing:10

                Rectangle
                {
                    id:rec_moluculer
                    x: rect_toolbar.x - col_root.padding
                    implicitHeight: 400
                    height: implicitHeight
                    width: (root.width - row_moluculer.spacing - 2*col_root.padding) / 2
                    color:"#22ffffff"
                }

                Column
                {
                    id:col_output
                    spacing: 10

                    Rectangle
                    {
                        id: output_energy
                        x:rec_moluculer.right + row_moluculer.spacing
                        y:rec_moluculer.y
                        height: (rec_moluculer.height - col_output.spacing) / 2
                        width: (root.width - row_moluculer.spacing - 2*col_root.padding) / 2
                        color:"#22ffffff"
                    }

                    Rectangle
                    {
                        id:output_tmp
                        x:output_energy.x
                        y:output_energy.bottom +col_output.spacing
                        height: (rec_moluculer.height - col_output.spacing) / 2
                        width: (root.width - row_moluculer.spacing - 2*col_root.padding) / 2
                        color:"#22ffffff"
                    }
                }
            }

            ProgressBar
            {
                id:progress_bar
                width: root.width - 2*col_root.padding
                height: 10
                value: 0.3
            }
        }
    }

}
