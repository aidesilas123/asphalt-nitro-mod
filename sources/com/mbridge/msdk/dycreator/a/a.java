package com.mbridge.msdk.dycreator.a;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import com.json.b4;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: MBLayoutInflate.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Class[] f6836f = {Context.class, AttributeSet.class};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final HashMap<String, Constructor> f6837g = new HashMap<>();
    private static String j = "com.mbridge.msdk.dycreator.baseview.MB";
    protected final Context a;
    private InterfaceC0393a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f6838d;
    private HashMap<String, Boolean> h;
    private long i;
    private final boolean b = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object[] f6839e = new Object[2];

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.a.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MBLayoutInflate.java */
    public interface InterfaceC0393a {
        View a(String str, Context context, AttributeSet attributeSet);
    }

    /* JADX INFO: compiled from: MBLayoutInflate.java */
    public interface b {
        boolean a(Class cls);
    }

    public a(Context context) {
        this.a = context;
    }

    private View a(String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        System.out.println("******** Creating view: " + str);
        try {
            InterfaceC0393a interfaceC0393a = this.c;
            View viewA = interfaceC0393a == null ? null : interfaceC0393a.a(str, this.a, attributeSet);
            if (viewA == null) {
                viewA = -1 == str.indexOf(46) ? (str.equals("MBStarLevelLayoutView") || str.equals("LuckPan")) ? a(str, "", attributeSet) : a(str, j, attributeSet) : a(str, (String) null, attributeSet);
            }
            System.out.println("Created view is: " + viewA);
            return viewA;
        } catch (InflateException e2) {
            throw e2;
        } catch (ClassNotFoundException e3) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException.initCause(e3);
            throw inflateException;
        } catch (Exception e4) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e4);
            throw inflateException2;
        }
    }

    private View a(String str, String str2, AttributeSet attributeSet) throws InflateException, ClassNotFoundException {
        String str3;
        String str4;
        HashMap<String, Constructor> map = f6837g;
        Constructor<?> constructor = map.get(str);
        Class<?> clsLoadClass = null;
        try {
            if (constructor == null) {
                ClassLoader classLoader = this.a.getClassLoader();
                if (str2 != null) {
                    str4 = str2 + str;
                } else {
                    str4 = str;
                }
                clsLoadClass = classLoader.loadClass(str4);
                b bVar = this.f6838d;
                if (bVar != null && clsLoadClass != null && !bVar.a(clsLoadClass)) {
                    b(str, str2, attributeSet);
                }
                constructor = clsLoadClass.getConstructor(f6836f);
                map.put(str, constructor);
            } else if (this.f6838d != null) {
                Boolean bool = this.h.get(str);
                if (bool == null) {
                    ClassLoader classLoader2 = this.a.getClassLoader();
                    if (str2 != null) {
                        str3 = str2 + str;
                    } else {
                        str3 = str;
                    }
                    clsLoadClass = classLoader2.loadClass(str3);
                    boolean z = clsLoadClass != null && this.f6838d.a(clsLoadClass);
                    this.h.put(str, Boolean.valueOf(z));
                    if (!z) {
                        b(str, str2, attributeSet);
                    }
                } else if (bool.equals(Boolean.FALSE)) {
                    b(str, str2, attributeSet);
                }
            }
            Object[] objArr = this.f6839e;
            objArr[1] = attributeSet;
            return (View) constructor.newInstance(objArr);
        } catch (ClassNotFoundException e2) {
            throw e2;
        } catch (NoSuchMethodException e3) {
            StringBuilder sb = new StringBuilder();
            sb.append(attributeSet.getPositionDescription());
            sb.append(": Error inflating class ");
            if (str2 != null) {
                str = str2 + str;
            }
            sb.append(str);
            InflateException inflateException = new InflateException(sb.toString());
            inflateException.initCause(e3);
            throw inflateException;
        } catch (Exception e4) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(attributeSet.getPositionDescription());
            sb2.append(": Error inflating class ");
            sb2.append(clsLoadClass == null ? "<unknown>" : clsLoadClass.getName());
            InflateException inflateException2 = new InflateException(sb2.toString());
            inflateException2.initCause(e4);
            throw inflateException2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.view.View, android.view.ViewGroup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [android.view.View] */
    private View a(XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z) {
        int next;
        synchronized (this.f6839e) {
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
            this.f6839e[0] = this.a;
            do {
                try {
                    next = xmlPullParser.next();
                    if (next == 2) {
                        break;
                    }
                } catch (IOException e2) {
                    InflateException inflateException = new InflateException(xmlPullParser.getPositionDescription() + ": " + e2.getMessage());
                    inflateException.initCause(e2);
                    throw inflateException;
                } catch (XmlPullParserException e3) {
                    InflateException inflateException2 = new InflateException(e3.getMessage());
                    inflateException2.initCause(e3);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next != 2) {
                throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
            }
            String name = xmlPullParser.getName();
            System.out.println("**************************");
            System.out.println("Creating root view: " + name);
            System.out.println("**************************");
            if (!"merge".equals(name)) {
                View viewA = a(name, attributeSetAsAttributeSet);
                ViewGroup.LayoutParams layoutParamsGenerateLayoutParams = null;
                if (viewGroup != 0) {
                    System.out.println("Creating params from root: " + ((Object) viewGroup));
                    layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSetAsAttributeSet);
                    if (!z) {
                        viewA.setLayoutParams(layoutParamsGenerateLayoutParams);
                    }
                }
                System.out.println("-----> start inflating children");
                a(xmlPullParser, viewA, attributeSetAsAttributeSet);
                System.out.println("-----> done inflating children");
                if (viewGroup != 0 && z) {
                    viewGroup.addView(viewA, layoutParamsGenerateLayoutParams);
                }
                if (viewGroup == 0 || !z) {
                    viewGroup = viewA;
                }
            } else {
                if (viewGroup == 0 || !z) {
                    throw new InflateException("<merge /> can be used only with a valid ViewGroup root and attachToRoot=true");
                }
                a(xmlPullParser, (View) viewGroup, attributeSetAsAttributeSet);
            }
        }
        return viewGroup;
    }

    private XmlPullParser a(String str) {
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        try {
            xmlPullParserNewPullParser.setInput(new FileInputStream(str), b4.L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return xmlPullParserNewPullParser;
    }

    private void a(XmlPullParser xmlPullParser, View view, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int next;
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next2 = xmlPullParser.next();
            if ((next2 == 3 && xmlPullParser.getDepth() <= depth) || next2 == 1) {
                return;
            }
            if (next2 == 2) {
                String name = xmlPullParser.getName();
                if ("requestFocus".equals(name)) {
                    view.requestFocus();
                    int depth2 = xmlPullParser.getDepth();
                    do {
                        next = xmlPullParser.next();
                        if (next != 3 || xmlPullParser.getDepth() > depth2) {
                        }
                    } while (next != 1);
                } else if ("include".equals(name)) {
                    if (xmlPullParser.getDepth() == 0) {
                        throw new InflateException("<include /> cannot be the root element");
                    }
                    b(xmlPullParser, view, attributeSet);
                } else {
                    if ("merge".equals(name)) {
                        throw new InflateException("<merge /> must be the root element");
                    }
                    View viewA = a(name, attributeSet);
                    ViewGroup viewGroup = (ViewGroup) view;
                    ViewGroup.LayoutParams layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSet);
                    a(xmlPullParser, viewA, attributeSet);
                    viewGroup.addView(viewA, layoutParamsGenerateLayoutParams);
                }
            }
        }
    }

    private void b(String str, String str2, AttributeSet attributeSet) {
        StringBuilder sb = new StringBuilder();
        sb.append(attributeSet.getPositionDescription());
        sb.append(": Class not allowed to be inflated ");
        if (str2 != null) {
            str = str2 + str;
        }
        sb.append(str);
        throw new InflateException(sb.toString());
    }

    private void b(XmlPullParser xmlPullParser, View view, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int next;
        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams;
        int next2;
        if (!(view instanceof ViewGroup)) {
            throw new InflateException("<include /> can only be used inside of a ViewGroup");
        }
        int attributeResourceValue = attributeSet.getAttributeResourceValue(null, TtmlNode.TAG_LAYOUT, 0);
        if (attributeResourceValue == 0) {
            String attributeValue = attributeSet.getAttributeValue(null, TtmlNode.TAG_LAYOUT);
            if (attributeValue == null) {
                throw new InflateException("You must specifiy a layout in the include tag: <include layout=\"@layout/layoutID\" />");
            }
            throw new InflateException("You must specifiy a valid layout reference. The layout ID " + attributeValue + " is not valid.");
        }
        XmlResourceParser layout = this.a.getResources().getLayout(attributeResourceValue);
        try {
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
            do {
                next = layout.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new InflateException(layout.getPositionDescription() + ": No start tag found!");
            }
            String name = layout.getName();
            if ("merge".equals(name)) {
                a(layout, view, attributeSetAsAttributeSet);
            } else {
                View viewA = a(name, attributeSetAsAttributeSet);
                ViewGroup viewGroup = (ViewGroup) view;
                try {
                    layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSet);
                } catch (RuntimeException unused) {
                    layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSetAsAttributeSet);
                    if (layoutParamsGenerateLayoutParams != null) {
                    }
                    a(layout, viewA, attributeSetAsAttributeSet);
                    viewGroup.addView(viewA);
                }
                if (layoutParamsGenerateLayoutParams != null) {
                    viewA.setLayoutParams(layoutParamsGenerateLayoutParams);
                }
                a(layout, viewA, attributeSetAsAttributeSet);
                viewGroup.addView(viewA);
            }
            layout.close();
            int depth = xmlPullParser.getDepth();
            do {
                next2 = xmlPullParser.next();
                if (next2 == 3 && xmlPullParser.getDepth() <= depth) {
                    return;
                }
            } while (next2 != 1);
        } catch (Throwable th) {
            layout.close();
            throw th;
        }
    }

    public final View a(String str, ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        this.i = System.currentTimeMillis();
        System.out.println("INFLATING from resource: " + str);
        return a(a(str), viewGroup, z);
    }
}
