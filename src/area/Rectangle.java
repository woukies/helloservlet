package area;

public class Rectangle {
	private int width, height;

	public int getWidth() {
		return width;
	}

	public int getHeight() {
		return height;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int process() {
		return width * height;
	}
	
	public int process(int w, int h) {
		return w * h;
	}
}
