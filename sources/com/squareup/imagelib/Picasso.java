package com.squareup.imagelib;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import androidx.core.internal.view.SupportMenu;
import com.squareup.imagelib.a;
import java.io.File;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public class Picasso {
    static final Handler a = new a(Looper.getMainLooper());
    static volatile Picasso b = null;
    private final d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f7729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f7730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<u> f7731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Context f7732g;
    final i h;
    final com.squareup.imagelib.d i;
    final w j;
    final Map<Object, com.squareup.imagelib.a> k;
    final Map<ImageView, h> l;
    final ReferenceQueue<Object> m;
    final Bitmap.Config n;
    boolean o;
    volatile boolean p;
    boolean q;

    public enum LoadedFrom {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(SupportMenu.CATEGORY_MASK);


        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f7734e;

        LoadedFrom(int i) {
            this.f7734e = i;
        }
    }

    public enum Priority {
        LOW,
        NORMAL,
        HIGH
    }

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 3) {
                com.squareup.imagelib.a aVar = (com.squareup.imagelib.a) message.obj;
                if (aVar.g().p) {
                    a0.v("Main", "canceled", aVar.b.d(), "target got garbage collected");
                }
                aVar.a.b(aVar.k());
                return;
            }
            int i2 = 0;
            if (i == 8) {
                List list = (List) message.obj;
                int size = list.size();
                while (i2 < size) {
                    com.squareup.imagelib.c cVar = (com.squareup.imagelib.c) list.get(i2);
                    cVar.f7746f.d(cVar);
                    i2++;
                }
                return;
            }
            if (i != 13) {
                throw new AssertionError("Unknown handler message received: " + message.what);
            }
            List list2 = (List) message.obj;
            int size2 = list2.size();
            while (i2 < size2) {
                com.squareup.imagelib.a aVar2 = (com.squareup.imagelib.a) list2.get(i2);
                aVar2.a.m(aVar2);
                i2++;
            }
        }
    }

    public static class b {
        private final Context a;
        private j b;
        private ExecutorService c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.squareup.imagelib.d f7736d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private d f7737e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private e f7738f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List<u> f7739g;
        private Bitmap.Config h;
        private boolean i;
        private boolean j;

        public b(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null.");
            }
            this.a = context.getApplicationContext();
        }

        public Picasso a() {
            Context context = this.a;
            if (this.b == null) {
                this.b = a0.g(context);
            }
            if (this.f7736d == null) {
                this.f7736d = new n(context);
            }
            if (this.c == null) {
                this.c = new r();
            }
            if (this.f7738f == null) {
                this.f7738f = e.a;
            }
            w wVar = new w(this.f7736d);
            return new Picasso(context, new i(context, this.c, Picasso.a, this.b, this.f7736d, wVar), this.f7736d, this.f7737e, this.f7738f, this.f7739g, wVar, this.h, this.i, this.j);
        }

        public b b(boolean z) {
            this.j = z;
            return this;
        }
    }

    private static class c extends Thread {
        private final ReferenceQueue<Object> a;
        private final Handler b;

        class a implements Runnable {
            final /* synthetic */ Exception a;

            a(Exception exc) {
                this.a = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new RuntimeException(this.a);
            }
        }

        c(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.a = referenceQueue;
            this.b = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a.C0442a c0442a = (a.C0442a) this.a.remove(1000L);
                    Message messageObtainMessage = this.b.obtainMessage();
                    if (c0442a != null) {
                        messageObtainMessage.what = 3;
                        messageObtainMessage.obj = c0442a.a;
                        this.b.sendMessage(messageObtainMessage);
                    } else {
                        messageObtainMessage.recycle();
                    }
                } catch (InterruptedException unused) {
                    return;
                } catch (Exception e2) {
                    this.b.post(new a(e2));
                    return;
                }
            }
        }
    }

    public interface d {
        void a(Picasso picasso, Uri uri, Exception exc);
    }

    public interface e {
        public static final e a = new a();

        class a implements e {
            a() {
            }

            @Override // com.squareup.imagelib.Picasso.e
            public s a(s sVar) {
                return sVar;
            }
        }

        s a(s sVar);
    }

    Picasso(Context context, i iVar, com.squareup.imagelib.d dVar, d dVar2, e eVar, List<u> list, w wVar, Bitmap.Config config, boolean z, boolean z2) {
        this.f7732g = context;
        this.h = iVar;
        this.i = dVar;
        this.c = dVar2;
        this.f7729d = eVar;
        this.n = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new v(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new f(context));
        arrayList.add(new MediaStoreRequestHandler(context));
        arrayList.add(new g(context));
        arrayList.add(new com.squareup.imagelib.b(context));
        arrayList.add(new l(context));
        arrayList.add(new p(iVar.f7748d, wVar));
        this.f7731f = Collections.unmodifiableList(arrayList);
        this.j = wVar;
        this.k = new WeakHashMap();
        this.l = new WeakHashMap();
        this.o = z;
        this.p = z2;
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.m = referenceQueue;
        c cVar = new c(referenceQueue, a);
        this.f7730e = cVar;
        cVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Object obj) {
        a0.c();
        com.squareup.imagelib.a aVarRemove = this.k.remove(obj);
        if (aVarRemove != null) {
            aVarRemove.a();
            this.h.c(aVarRemove);
        }
        if (obj instanceof ImageView) {
            h hVarRemove = this.l.remove((ImageView) obj);
            if (hVarRemove != null) {
                hVarRemove.a();
            }
        }
    }

    private void f(Bitmap bitmap, LoadedFrom loadedFrom, com.squareup.imagelib.a aVar) {
        if (aVar.l()) {
            return;
        }
        if (!aVar.m()) {
            this.k.remove(aVar.k());
        }
        if (bitmap == null) {
            aVar.c();
            if (this.p) {
                a0.u("Main", "errored", aVar.b.d());
                return;
            }
            return;
        }
        if (loadedFrom == null) {
            throw new AssertionError("LoadedFrom cannot be null.");
        }
        aVar.b(bitmap, loadedFrom);
        if (this.p) {
            a0.v("Main", "completed", aVar.b.d(), "from " + loadedFrom);
        }
    }

    public static void setSingletonInstance(Picasso picasso) {
        if (picasso == null) {
            throw new IllegalArgumentException("Picasso must not be null.");
        }
        synchronized (Picasso.class) {
            if (b != null) {
                throw new IllegalStateException("Singleton instance already exists.");
            }
            b = picasso;
        }
    }

    public static Picasso with(Context context) {
        if (b == null) {
            synchronized (Picasso.class) {
                if (b == null) {
                    b = new b(context).a();
                }
            }
        }
        return b;
    }

    public void c(ImageView imageView) {
        b(imageView);
    }

    void d(com.squareup.imagelib.c cVar) {
        com.squareup.imagelib.a aVarH = cVar.h();
        List<com.squareup.imagelib.a> listI = cVar.i();
        boolean z = true;
        boolean z2 = (listI == null || listI.isEmpty()) ? false : true;
        if (aVarH == null && !z2) {
            z = false;
        }
        if (z) {
            Uri uri = cVar.j().f7764e;
            Exception excK = cVar.k();
            Bitmap bitmapS = cVar.s();
            LoadedFrom loadedFromO = cVar.o();
            if (aVarH != null) {
                f(bitmapS, loadedFromO, aVarH);
            }
            if (z2) {
                int size = listI.size();
                for (int i = 0; i < size; i++) {
                    f(bitmapS, loadedFromO, listI.get(i));
                }
            }
            d dVar = this.c;
            if (dVar == null || excK == null) {
                return;
            }
            dVar.a(this, uri, excK);
        }
    }

    void e(ImageView imageView, h hVar) {
        if (this.l.containsKey(imageView)) {
            b(imageView);
        }
        this.l.put(imageView, hVar);
    }

    void g(com.squareup.imagelib.a aVar) {
        Object objK = aVar.k();
        if (objK != null && this.k.get(objK) != aVar) {
            b(objK);
            this.k.put(objK, aVar);
        }
        n(aVar);
    }

    List<u> h() {
        return this.f7731f;
    }

    public t i(Uri uri) {
        return new t(this, uri, 0);
    }

    public t j(File file) {
        return file == null ? new t(this, null, 0) : i(Uri.fromFile(file));
    }

    public t k(String str) {
        if (str == null) {
            return new t(this, null, 0);
        }
        if (str.trim().length() != 0) {
            return i(Uri.parse(str));
        }
        throw new IllegalArgumentException("Path must not be empty.");
    }

    Bitmap l(String str) {
        Bitmap bitmap = this.i.get(str);
        if (bitmap != null) {
            this.j.d();
        } else {
            this.j.e();
        }
        return bitmap;
    }

    void m(com.squareup.imagelib.a aVar) {
        Bitmap bitmapL = MemoryPolicy.f(aVar.f7741e) ? l(aVar.d()) : null;
        if (bitmapL == null) {
            g(aVar);
            if (this.p) {
                a0.u("Main", "resumed", aVar.b.d());
                return;
            }
            return;
        }
        LoadedFrom loadedFrom = LoadedFrom.MEMORY;
        f(bitmapL, loadedFrom, aVar);
        if (this.p) {
            a0.v("Main", "completed", aVar.b.d(), "from " + loadedFrom);
        }
    }

    void n(com.squareup.imagelib.a aVar) {
        this.h.h(aVar);
    }

    s o(s sVar) {
        s sVarA = this.f7729d.a(sVar);
        if (sVarA != null) {
            return sVarA;
        }
        throw new IllegalStateException("Request transformer " + this.f7729d.getClass().getCanonicalName() + " returned null for " + sVar);
    }
}
