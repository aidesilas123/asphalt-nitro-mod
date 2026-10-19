package kotlinx.coroutines;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.Metadata;

/* JADX INFO: renamed from: kotlinx.coroutines.p0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0000\b\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0003R\u0014\u0010\u0006\u001a\u00020\u0007X\u0090\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\t¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableJob;", "parent", "Lkotlinx/coroutines/Job;", "(Lkotlinx/coroutines/Job;)V", "handlesException", "", "getHandlesException$kotlinx_coroutines_core", "()Z", "onCancelComplete", "getOnCancelComplete$kotlinx_coroutines_core", CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, "completeExceptionally", "exception", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public class JobImpl extends JobSupport implements CompletableJob {
    private final boolean c;

    public JobImpl(Job job) {
        super(true);
        t0(job);
        this.c = Z0();
    }

    private final boolean Z0() {
        JobSupport jobSupportS;
        ChildHandle childHandleN0 = n0();
        ChildHandleNode childHandleNode = childHandleN0 instanceof ChildHandleNode ? (ChildHandleNode) childHandleN0 : null;
        if (childHandleNode != null && (jobSupportS = childHandleNode.s()) != null) {
            while (!jobSupportS.getC()) {
                ChildHandle childHandleN02 = jobSupportS.n0();
                ChildHandleNode childHandleNode2 = childHandleN02 instanceof ChildHandleNode ? (ChildHandleNode) childHandleN02 : null;
                if (childHandleNode2 == null || (jobSupportS = childHandleNode2.s()) == null) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.JobSupport
    /* JADX INFO: renamed from: j0, reason: from getter */
    public boolean getC() {
        return this.c;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean l0() {
        return true;
    }
}
