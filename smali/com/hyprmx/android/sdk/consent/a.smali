###### Class com.hyprmx.android.sdk.consent.a (com.hyprmx.android.sdk.consent.a)
.class public final Lcom/hyprmx/android/sdk/consent/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/consent/b;
.implements Lcom/hyprmx/android/sdk/consent/b$a;
.implements Lkotlinx/coroutines/s;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/core/js/a;

.field public b:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

.field public final synthetic c:Lkotlinx/coroutines/s;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/js/a;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lkotlinx/coroutines/s;)V
    .registers 5

    const-string v0, "jsEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "givenConsent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/consent/a;->a:Lcom/hyprmx/android/sdk/core/js/a;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/consent/a;->b:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    new-instance p2, Lkotlinx/coroutines/CoroutineName;

    const-string v0, "ConsentController"

    invoke-direct {p2, v0}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object p2

    iput-object p2, p0, Lcom/hyprmx/android/sdk/consent/a;->c:Lkotlinx/coroutines/s;

    const-string p2, "HYPRNativeConsentController"

    invoke-interface {p1, p2, p0}, Lcom/hyprmx/android/sdk/core/js/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/consent/a;->a:Lcom/hyprmx/android/sdk/core/js/a;

    const-string v1, "HYPRConsentController"

    const-string v2, "new ConsentController()"

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/core/js/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/hyprmx/android/sdk/consent/ConsentStatus;)V
    .registers 5

    const-string v0, "givenConsent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/consent/a;->b:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/consent/a;->a:Lcom/hyprmx/android/sdk/core/js/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HYPRConsentController.consentStatusChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->getConsent()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/core/js/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/hyprmx/android/sdk/consent/ConsentStatus;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/consent/a;->b:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    return-object v0
.end method

.method public getConsentStatus()I
    .registers 2
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/consent/a;->b:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->getConsent()I

    move-result v0

    return v0
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/consent/a;->c:Lkotlinx/coroutines/s;

    invoke-interface {v0}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
