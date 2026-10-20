###### Class com.hyprmx.android.sdk.vast.b.k (com.hyprmx.android.sdk.vast.b$k)
.class public final Lcom/hyprmx/android/sdk/vast/b$k;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/vast/b;->j(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.vast.VastTracking"
    f = "VastTracking.kt"
    i = {}
    l = {
        0x2a
    }
    m = "onThirdQuartile"
    n = {}
    s = {}
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/hyprmx/android/sdk/vast/b;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/vast/b;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/vast/b;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/vast/b$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/vast/b$k;->b:Lcom/hyprmx/android/sdk/vast/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/vast/b$k;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/vast/b$k;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/vast/b$k;->c:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/vast/b$k;->b:Lcom/hyprmx/android/sdk/vast/b;

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/vast/b;->j(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
