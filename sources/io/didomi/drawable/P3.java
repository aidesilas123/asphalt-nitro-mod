package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.user.UserAuth;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003R$\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\u0005\u0010\nR\"\u0010\u0012\u001a\u00020\f8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0005\u0010\u0011R*\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00138\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u0014\u001a\u0004\b\r\u0010\u0015\"\u0004\b\u0005\u0010\u0016¨\u0006\u0018"}, d2 = {"Lio/didomi/sdk/P3;", "", "<init>", "()V", "", "a", "Lio/didomi/sdk/user/UserAuth;", "Lio/didomi/sdk/user/UserAuth;", "c", "()Lio/didomi/sdk/user/UserAuth;", "(Lio/didomi/sdk/user/UserAuth;)V", "userAuth", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Z", "(Z)V", "userIsUnderage", "", "Ljava/util/List;", "()Ljava/util/List;", "(Ljava/util/List;)V", "synchronizedUsers", "android_release"}, mv = {1, 8, 0})
public class P3 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private UserAuth userAuth;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private boolean userIsUnderage;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private List<? extends UserAuth> synchronizedUsers;

    public void a() {
        a((UserAuth) null);
        a(false);
        a((List<? extends UserAuth>) null);
    }

    public void a(UserAuth userAuth) {
        this.userAuth = userAuth;
    }

    public void a(List<? extends UserAuth> list) {
        this.synchronizedUsers = list;
    }

    public void a(boolean z) {
        this.userIsUnderage = z;
    }

    public List<UserAuth> b() {
        return this.synchronizedUsers;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public UserAuth getUserAuth() {
        return this.userAuth;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public boolean getUserIsUnderage() {
        return this.userIsUnderage;
    }
}
