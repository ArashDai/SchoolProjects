import tkinter
#START HERE

class ChartTop5:
    def __init__(self):
        self.__CANVAS_WIDTH = 320
        self.__CANVAS_HEIGHT = 240
        self.__X1 = 60
        self.__Y1 = 20
        self.__X2 = 260
        self.__Y2 = 220
        #china
        self.__PIE1_START = 0
        self.__PIE1_WIDTH = 130
        #india
        self.__PIE2_START = 130
        self.__PIE2_WIDTH = 121
        #pakistan
        self.__PIE3_START = 251
        self.__PIE3_WIDTH = 19
        #nigeria
        self.__PIE4_START = 270
        self.__PIE4_WIDTH = 18
        #bangladesh
        self.__PIE5_START = 288
        self.__PIE5_WIDTH = 15
        # extra
        self.__PIE6_START = 304
        self.__PIE6_WIDTH = 56

        #CREATE MAIN WINDOW
    def draw_piechart(self):
        self.main_window =  tkinter.Tk()

        # Create Canvas Widget
        self.canvas = tkinter.Canvas(self.main_window, width = self.__CANVAS_WIDTH, height = self.__CANVAS_HEIGHT)

        # Draw slice 1
        self.canvas.create_arc(self.__X1, self.__Y1, self.__X2, self.__Y2, start = self.__PIE1_START, extent = self.__PIE1_WIDTH, fill='red')

        # Draw slice 2
        self.canvas.create_arc(self.__X1, self.__Y1, self.__X2, self.__Y2, start = self.__PIE2_START, extent = self.__PIE2_WIDTH, fill='green')

        # Draw slice 3
        self.canvas.create_arc(self.__X1, self.__Y1, self.__X2, self.__Y2, start = self.__PIE3_START, extent = self.__PIE3_WIDTH, fill='blue')

        # Draw slice 4
        self.canvas.create_arc(self.__X1, self.__Y1, self.__X2, self.__Y2, start = self.__PIE4_START, extent = self.__PIE4_WIDTH, fill='yellow')

        # Draw slice 5
        self.canvas.create_arc(self.__X1, self.__Y1, self.__X2, self.__Y2, start = self.__PIE5_START, extent = self.__PIE5_WIDTH, fill='orange')

        # Draw slice 6
        self.canvas.create_arc(self.__X1, self.__Y1, self.__X2, self.__Y2, start = self.__PIE6_START, extent = self.__PIE6_WIDTH, fill='black')

        # Pack the canvas
        self.canvas.pack()

        # Start the mainloop

        tkinter.mainloop()

ChartTop5().draw_piechart()        
