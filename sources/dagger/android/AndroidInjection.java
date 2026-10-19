package dagger.android;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.ContentProvider;
import android.content.Context;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class AndroidInjection {
    private AndroidInjection() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static e a(Fragment fragment) {
        Fragment parentFragment = fragment;
        do {
            parentFragment = parentFragment.getParentFragment();
            if (parentFragment == 0) {
                Activity activity = fragment.getActivity();
                if (activity instanceof e) {
                    return (e) activity;
                }
                if (activity.getApplication() instanceof e) {
                    return (e) activity.getApplication();
                }
                throw new IllegalArgumentException(String.format("No injector was found for %s", fragment.getClass().getCanonicalName()));
            }
        } while (!(parentFragment instanceof e));
        return (e) parentFragment;
    }

    private static void b(Object obj, e eVar) {
        a<Object> aVarA = eVar.a();
        Preconditions.checkNotNull(aVarA, "%s.androidInjector() returned null", eVar.getClass());
        aVarA.a(obj);
    }

    public static void inject(Activity activity) {
        Preconditions.checkNotNull(activity, "activity");
        ComponentCallbacks2 application = activity.getApplication();
        if (!(application instanceof e)) {
            throw new RuntimeException(String.format("%s does not implement %s", application.getClass().getCanonicalName(), e.class.getCanonicalName()));
        }
        b(activity, (e) application);
    }

    public static void inject(Fragment fragment) {
        Preconditions.checkNotNull(fragment, "fragment");
        e eVarA = a(fragment);
        if (Log.isLoggable("dagger.android", 3)) {
            Log.d("dagger.android", String.format("An injector for %s was found in %s", fragment.getClass().getCanonicalName(), eVarA.getClass().getCanonicalName()));
        }
        b(fragment, eVarA);
    }

    public static void inject(Service service) {
        Preconditions.checkNotNull(service, NotificationCompat.CATEGORY_SERVICE);
        ComponentCallbacks2 application = service.getApplication();
        if (!(application instanceof e)) {
            throw new RuntimeException(String.format("%s does not implement %s", application.getClass().getCanonicalName(), e.class.getCanonicalName()));
        }
        b(service, (e) application);
    }

    public static void inject(BroadcastReceiver broadcastReceiver, Context context) {
        Preconditions.checkNotNull(broadcastReceiver, "broadcastReceiver");
        Preconditions.checkNotNull(context, "context");
        ComponentCallbacks2 componentCallbacks2 = (Application) context.getApplicationContext();
        if (!(componentCallbacks2 instanceof e)) {
            throw new RuntimeException(String.format("%s does not implement %s", componentCallbacks2.getClass().getCanonicalName(), e.class.getCanonicalName()));
        }
        b(broadcastReceiver, (e) componentCallbacks2);
    }

    public static void inject(ContentProvider contentProvider) {
        Preconditions.checkNotNull(contentProvider, "contentProvider");
        ComponentCallbacks2 componentCallbacks2 = (Application) contentProvider.getContext().getApplicationContext();
        if (!(componentCallbacks2 instanceof e)) {
            throw new RuntimeException(String.format("%s does not implement %s", componentCallbacks2.getClass().getCanonicalName(), e.class.getCanonicalName()));
        }
        b(contentProvider, (e) componentCallbacks2);
    }
}
