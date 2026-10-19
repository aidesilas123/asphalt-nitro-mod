package okio;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JvmOkio.kt */
/* JADX INFO: loaded from: classes5.dex */
final class x extends AsyncTimeout {
    private final Socket m;

    public x(Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "socket");
        this.m = socket;
    }

    @Override // okio.AsyncTimeout
    protected IOException l(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // okio.AsyncTimeout
    protected void p() {
        try {
            this.m.close();
        } catch (AssertionError e2) {
            if (!Okio.isAndroidGetsocknameError(e2)) {
                throw e2;
            }
            Okio__JvmOkioKt.a.log(Level.WARNING, Intrinsics.stringPlus("Failed to close timed out socket ", this.m), (Throwable) e2);
        } catch (Exception e3) {
            Okio__JvmOkioKt.a.log(Level.WARNING, Intrinsics.stringPlus("Failed to close timed out socket ", this.m), (Throwable) e3);
        }
    }
}
