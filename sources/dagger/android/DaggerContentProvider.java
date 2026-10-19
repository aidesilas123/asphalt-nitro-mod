package dagger.android;

import android.content.ContentProvider;
import androidx.annotation.CallSuper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DaggerContentProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    @CallSuper
    public boolean onCreate() {
        AndroidInjection.inject(this);
        return true;
    }
}
