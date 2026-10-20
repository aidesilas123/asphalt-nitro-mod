###### Class com.hyprmx.android.sdk.utility.b1.a (com.hyprmx.android.sdk.utility.b1$a)
.class public final Lcom/hyprmx/android/sdk/utility/b1$a;
.super Lcom/hyprmx/android/sdk/utility/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/utility/b1$a;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/hyprmx/android/sdk/utility/b1$a;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/utility/b1;-><init>(I)V

    iput-boolean p1, p0, Lcom/hyprmx/android/sdk/utility/b1$a;->a:Z

    return-void
.end method
