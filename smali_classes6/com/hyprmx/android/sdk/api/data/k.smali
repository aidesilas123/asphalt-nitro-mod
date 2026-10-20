###### Class com.hyprmx.android.sdk.api.data.k (com.hyprmx.android.sdk.api.data.k)
.class public final Lcom/hyprmx/android/sdk/api/data/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/api/data/o;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/api/data/o;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/api/data/d;Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    const-string v0, "requiredInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidAnswerMsg"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/api/data/k;->a:Lcom/hyprmx/android/sdk/api/data/o;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/api/data/k;->b:Ljava/lang/String;

    iput p3, p0, Lcom/hyprmx/android/sdk/api/data/k;->c:I

    iput p4, p0, Lcom/hyprmx/android/sdk/api/data/k;->d:I

    iput-object p5, p0, Lcom/hyprmx/android/sdk/api/data/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/api/data/k;->a:Lcom/hyprmx/android/sdk/api/data/o;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/api/data/o;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/api/data/k;->a:Lcom/hyprmx/android/sdk/api/data/o;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/api/data/o;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
