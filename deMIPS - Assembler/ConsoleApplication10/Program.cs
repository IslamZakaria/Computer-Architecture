using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using System.IO;

namespace ConsoleApplication5
{
    class Program
    {
        static void Main(string[] args)
        {
            Dictionary<string, string> Instructions_op_func = new Dictionary<string, string>();
            Dictionary<string, string> Regs = new Dictionary<string, string>();
            Dictionary<string, string> label_search = new Dictionary<string, string>();
            Dictionary<string, string> varible_search = new Dictionary<string, string>();
            FileStream fs = new FileStream(@"input.txt", FileMode.Open, FileAccess.Read);
            Regs["$zero"] = "00000";
            Regs["$at"] = "00001";
            Regs["$v0"] = "00010";
            Regs["$v1"] = "00011";
            Regs["$a0"] = "00100";
            Regs["$a1"] = "00101";
            Regs["$a2"] = "00110";
            Regs["$a3"] = "00111";
            Regs["$t0"] = "01000";
            Regs["$t1"] = "01001";
            Regs["$t2"] = "01010";
            Regs["$t3"] = "01011";
            Regs["$t4"] = "01100";
            Regs["$t5"] = "01101";
            Regs["$t6"] = "01110";
            Regs["$t7"] = "01111";
            Regs["$s0"] = "10000";
            Regs["$s1"] = "10001";
            Regs["$s2"] = "10010";
            Regs["$s3"] = "10011";
            Regs["$s4"] = "10100";
            Regs["$s5"] = "10101";
            Regs["$s6"] = "10110";
            Regs["$s7"] = "10111";
            Regs["$t8"] = "11000";
            Regs["$t9"] = "11001";
            Regs["$k0"] = "11010";
            Regs["$k1"] = "11011";
            Regs["$gp"] = "11100";
            Regs["$sp"] = "11101";
            Regs["$fp"] = "11110";
            Regs["$ra"] = "11111";

            Instructions_op_func["and"] = "R 100100";
            Instructions_op_func["add"] = "R 100000";
            Instructions_op_func["sub"] = "R 100010";
            Instructions_op_func["or"] = "R 100101";
            Instructions_op_func["nor"] = "R 100111";
            Instructions_op_func["slt"] = "R 101010";
            Instructions_op_func["addi"] = "I 001000";
            Instructions_op_func["lw"] = "I 100011";
            Instructions_op_func["sw"] = "I 101011";
            Instructions_op_func["beq"] = "I 000100";
            Instructions_op_func["bne"] = "I 000101";
            Instructions_op_func["j"] = "J 000010";
            FileStream fss = new FileStream("input.txt", FileMode.Open, FileAccess.Read);

            StreamReader cr = new StreamReader(fss);
            int generalcount = 0;
            int refg = 0; 

            while (cr.Peek() != -1)
            {
                string fst = cr.ReadLine();
                fst.Trim(' ');
                string [] gy = fst.Split(' ');
                if (gy[0]==".text")
                {
                    refg = 1;
                    continue;
                }

                if (fst[0] == '#')
                {
                    continue;
 
                }
                if (refg==1)
                {
                    
                        MatchCollection mc = Regex.Matches(fst, @"\b\w*:");
                        foreach (Match m in mc)
                        {
                            string sp = m.ToString();
                            int indx = sp.Length - 1;
                            sp = sp.Remove(indx);
                            label_search[sp] = generalcount.ToString();
                        }
                    
                    generalcount++;
                }

              
            
            
            }
            fss.Close();
            FileStream fsw = new FileStream("DataSegment.txt", FileMode.OpenOrCreate);
            StreamWriter sw = new StreamWriter(fsw);
            StreamReader sr = new StreamReader(fs);
            int coount = 0;
            while (sr.Peek() != -1)
            {
                string x = sr.ReadLine();
                if (x.Contains(".data")|| x[0] == '#')
                {
                    continue;
                }
                if (x.Contains(".text"))
                {
                    break;
                }
                MatchCollection mc = Regex.Matches(x, @"\b\w*:");
                foreach (Match m in mc)
                {
                    string sp=m.ToString();
                    int indx = sp.Length - 1;
                    sp = sp.Remove(indx);
                    varible_search[sp] = coount.ToString();
                    if (x.Contains("."))
                    {
                        string[] w = x.Split(new[] { '.' }, 2);
                        string[] wosp = w[1].Split(' ');
                        string wri = "";
                        if (wosp[0] == "space")
                        {
                            int g = int.Parse(wosp[1]);
                            for (int i = 0; i < g; i++)
                            {
                                wri = "";
                                
                                wri += "MEMORY (";
                                wri += coount.ToString();   
                                wri += ") <= \"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\" ;";
                                //Console.Write("MEMORY (");
                                //Console.Write(coount);
                                //Console.WriteLine(") <= \"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\" ;");
                                sw.WriteLine(wri);
                                coount++;
                            }
                        }
                        if (wosp[0] == "word")
                        {
                            string[] varname = x.Split(':');
                            int oo = int.Parse(wosp[1]);
                            string bin = Convert.ToString(oo, 2);
                            string binn = "";
                            for (int i = 0; i < 32 - bin.Length; i++)
                            {
                                binn += "0";
                            }

                            binn += bin;
                            bin = binn;
                            wri = "";
                            wri += "MEMORY (";
                            wri += coount.ToString();
                            wri += ") <= \"";
                            wri += bin;
                            wri += "\" ;";
                            sw.WriteLine(wri);
                            coount++;
                        }
                    }
                }
            }
            sw.Close();
            fsw.Close();


            FileStream fsww = new FileStream("CodeSegment.txt", FileMode.Append);
            StreamWriter sww = new StreamWriter(fsww);
            Console.WriteLine("");
            int txtcount = 0;

            while (sr.Peek() != -1)
            {
                string xx = sr.ReadLine();

                if (xx[0] == '#')
                {
                    continue;
                }
                MatchCollection mc = Regex.Matches(xx, @"\b\w*:");
                foreach (Match m in mc)
                {
               
                    string[] fc = xx.Split(':');
                    xx = fc[1];
                    xx = xx.Trim(' ');
                }
                string mem = "MEMORY(" + txtcount + ") := \"";

                string[] e = xx.Split(new[] { ' ' }, 2);
                e[1] = e[1].Replace(" ", "");
                string[] ee;
                ee = e[1].Split(',');
                if (Instructions_op_func.ContainsKey(e[0]))
                {
                    string[] r = Instructions_op_func[e[0]].Split(' ');
                    if (r[0][0] == 'R')
                    {
                        string qw = "";
                        //6-5-5-5-5-6
                        string[] z = ee[2].Split('#');
                        //the R-type
                        qw += "000000";
                        qw += Regs[ee[1]];
                        qw += Regs[z[0]];
                        qw += Regs[ee[0]];
                        qw += "00000";
                        qw += r[1];
                        sww.WriteLine(mem + qw + "\" ;");
                    }
                    else if (r[0][0] == 'I')
                    {
                        
                        //6-5-5-16
                        //the I-type
                        string str_I = "";
                        int im;
                        if (e[0] == "lw" || e[0] == "sw")
                        {
                            string[] z = ee[1].Split('#');
                            z[0] = z[0].Replace(")", "");
                            string[] d = z[0].Split('(');
                            if (varible_search.ContainsKey(d[0]))
                            {
                                im = int.Parse(varible_search[d[0]]);
                                im = im * 4;
                            }
                            else
                            {
                                im = int.Parse(d[0]);
                            }
                            string[] ad = new string[] { "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0" };
                            string temp = "";
                            string address = "";
                            //convert to binarry address/constant
                            int[] a = new int[16];
                            int i;
                            for (i = 0; im > 0; i++)
                            {
                                a[i] = im % 2;
                                im = im / 2;
                            }
                            for (i = i - 1; i >= 0; i--)
                            {
                                int n = a[i];
                                temp += n.ToString();
                            }
                            int j=0;
                            for (i = 16- temp.Length; i < 16; i++)
                            {
                                ad[i] = temp[j].ToString();
                                j++;
                            }
                            for (j = 0; j < 16; j++)
                            {
                                address += ad[j];
                            }
                            str_I += r[1];
                            str_I += Regs[d[1]];
                            str_I += Regs[ee[0]];
                            str_I += address;
                            sww.WriteLine(mem+str_I + "\" ;");
                        }
                        else
                        {
                            str_I += r[1];
                            str_I += Regs[ee[0]];
                            str_I += Regs[ee[1]];
                            string [] varthree = ee[2].Split('#');
                            string ibin = "";
                            int p=0; 
                            if (label_search.ContainsKey(varthree[0]))
                            {
                                int labelline =int.Parse(label_search[varthree[0]]);
                                p = labelline - txtcount - 1;
                                ibin = Convert.ToString(p, 2);

                            
                            
                            }
                            else if (varible_search.ContainsKey(varthree[0]))
                            {
                                p = int.Parse(varible_search[varthree[0]]);
                                p *= 4;
                                ibin = Convert.ToString(p, 2);


                            }
                            else
                            {
                                p = int.Parse(varthree[0]);
                                ibin = Convert.ToString(p, 2);
                            
                            }
                            if (ibin.Length == 32)
                            {
                                string newibin = "";
                                for (int i = 0; i < 16; i++)
                                {
                                    newibin = newibin + ibin[16 + i]; 
                                }
                                ibin = newibin; 
                            }
                            else
                            {
                                int qs = 16-ibin.Length;

                                for (int i = 0; i <qs ; i++)
                                {
                                    ibin = '0' + ibin; 
                                }

                            }
                            str_I += ibin;
                            sww.WriteLine(mem+str_I + "\" ;");
                        }
                    }
                    else
                    {
                        // j-type
                        string str_I = "";
                        string lol = "";
                        str_I += r[1];
                        string[] varOne = ee[0].Split('#');
                        string address=label_search[varOne[0]];
                        int z = int.Parse(address);
                        lol = Convert.ToString(z, 2);
                        int qs = 26 - lol.Length;

                        for (int i = 0; i < qs; i++)
                        {
                            lol = '0' + lol;
                        }
                        str_I += lol;
                        sww.WriteLine(mem+str_I+"\" ;");
                    }
                }
                txtcount++;

            }
            sww.Close();
            fsww.Close();
            fs.Close();
        }
    }
}