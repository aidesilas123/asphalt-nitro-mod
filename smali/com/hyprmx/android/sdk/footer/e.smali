###### Class com.hyprmx.android.sdk.footer.e (com.hyprmx.android.sdk.footer.e)
.class public final Lcom/hyprmx/android/sdk/footer/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    const-string v0, "portraitUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/footer/e;->a:Ljava/lang/String;

    iput p2, p0, Lcom/hyprmx/android/sdk/footer/e;->b:I

    iput p3, p0, Lcom/hyprmx/android/sdk/footer/e;->c:I

    iput-object p4, p0, Lcom/hyprmx/android/sdk/footer/e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()I
    .registers 2

    iget v0, p0, Lcom/hyprmx/android/sdk/footer/e;->b:I

    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/hyprmx/android/sdk/footer/e;->c:I

    return v0
.end method
