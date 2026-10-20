###### Class com.hyprmx.android.sdk.network.m.a (com.hyprmx.android.sdk.network.m$a)
.class public final Lcom/hyprmx/android/sdk/network/m$a;
.super Lcom/hyprmx/android/sdk/network/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/network/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hyprmx/android/sdk/network/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/network/m;-><init>(I)V

    iput p2, p0, Lcom/hyprmx/android/sdk/network/m$a;->a:I

    iput-object p1, p0, Lcom/hyprmx/android/sdk/network/m$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/hyprmx/android/sdk/network/m$a;->a:I

    return v0
.end method
