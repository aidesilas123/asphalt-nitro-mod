package dagger.android;

import android.app.Application;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DaggerApplication extends Application implements e {
    volatile d<Object> a;

    private void c() {
        if (this.a == null) {
            synchronized (this) {
                if (this.a == null) {
                    b().a(this);
                    if (this.a == null) {
                        throw new IllegalStateException("The AndroidInjector returned from applicationInjector() did not inject the DaggerApplication");
                    }
                }
            }
        }
    }

    @Override // dagger.android.e
    public a<Object> a() {
        c();
        return this.a;
    }

    protected abstract a<? extends DaggerApplication> b();

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        c();
    }
}
