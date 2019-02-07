int lim = 800;
ArrayList <f> bob = new ArrayList <f>();
//float x, y, z;
public void setup()
{
	size(800, 800);//, P3D);
	//x = width/2;
 	//y = height/2;
  	//z = 0;
	frameRate(120);
}
public void draw()
{
	background(800/5, 65, 800/8);
	//translate(0, 0, z);
	fractal(10, 800 - 10, lim);
	//lim += 5;
	/*if (lim >= 25)
	{
		lim = 12;
	}*/
	lim+=30;
	if (lim > 1600)
	{
		lim = 820;
		setup();
	}
}
public void mouseDragged()//optional
{

}
public void fractal(int x, int y, int len) 
{
	//if(x < -800 || x > 800 + len
	fill((int)x/5, 65, (int)y/8);
	//len = len + 5;
	bob.add(new f(x, y, len));
	/*for (int i = 0; i < bob.size(); i++)
	{
		if (bob.get(i).getW() > bob.get(i).getV() + 800)
		{
			//System.out.println(bob.remove(i));
			bob.remove(i);
		}
	}*/
	if (len < 48) //+ lim)
	{
		/*for(int i = 0; i < 10000; i++)
		{
			z++;
			if (z >= len)
			{
				len = len /2;
				break;
			}
		}*/
	}
	else
	{
		fractal(x, y, (int)(len/2));
		fractal(x + (int)(len/2), y, (int)(len/2));
		fractal(x, y - (int)(len/2), (int)(len/2));
		fractal(x + (int)(len/2), y - (int)(len/2), (int)(len/2));
		//fractal(x - (int)(len/2)), y, (int)(len/2)));
		//fractal(x - (int)(len/2)), y + (int)(len/2)), (int)(len/2)));
	}
}

public class f
{
	private int w, z, v;
	public f(int x, int y, int len)
	{
		w = x;
		z = y;
		v = len;
		ellipse(w, z, v, v);
	}
	public int getW()
	{
		return w;
	}
	public int getV()
	{
		return v;
	}
}
