package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: renamed from: kotlinx.coroutines.x0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/ResumeAwaitOnCompletion;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/JobNode;", "continuation", "Lkotlinx/coroutines/CancellableContinuationImpl;", "(Lkotlinx/coroutines/CancellableContinuationImpl;)V", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
final class ResumeAwaitOnCompletion<T> extends JobNode {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CancellableContinuationImpl<T> f10446e;

    /* JADX WARN: Multi-variable type inference failed */
    public ResumeAwaitOnCompletion(CancellableContinuationImpl<? super T> cancellableContinuationImpl) {
        this.f10446e = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.InternalCompletionHandler
    public void a(Throwable th) {
        Object objO0 = s().o0();
        if (DebugKt.getASSERTIONS_ENABLED() && !(!(objO0 instanceof Incomplete))) {
            throw new AssertionError();
        }
        if (objO0 instanceof CompletedExceptionally) {
            CancellableContinuationImpl<T> cancellableContinuationImpl = this.f10446e;
            Result.a aVar = Result.a;
            cancellableContinuationImpl.resumeWith(Result.m1238constructorimpl(ResultKt.createFailure(((CompletedExceptionally) objO0).b)));
        } else {
            CancellableContinuationImpl<T> cancellableContinuationImpl2 = this.f10446e;
            Result.a aVar2 = Result.a;
            cancellableContinuationImpl2.resumeWith(Result.m1238constructorimpl(JobSupportKt.unboxState(objO0)));
        }
    }
}
