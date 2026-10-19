package org.greenrobot.eventbus;

import com.json.o2;
import java.util.logging.Level;
import org.greenrobot.eventbus.android.AndroidComponents;

/* JADX INFO: loaded from: classes5.dex */
public interface Logger {

    public static class Default {
        public static Logger get() {
            return AndroidComponents.areAvailable() ? AndroidComponents.get().b : new a();
        }
    }

    public static class a implements Logger {
        @Override // org.greenrobot.eventbus.Logger
        public void a(Level level, String str, Throwable th) {
            System.out.println(o2.i.f6490d + level + "] " + str);
            th.printStackTrace(System.out);
        }

        @Override // org.greenrobot.eventbus.Logger
        public void b(Level level, String str) {
            System.out.println(o2.i.f6490d + level + "] " + str);
        }
    }

    void a(Level level, String str, Throwable th);

    void b(Level level, String str);
}
