###### Class com.hyprmx.android.sdk.utility.j0.b (com.hyprmx.android.sdk.utility.j0$b)
.class public final Lcom/hyprmx/android/sdk/utility/j0$b;
.super Lcom/hyprmx/android/sdk/utility/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lcom/hyprmx/android/sdk/utility/j0$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/utility/j0$b;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/utility/j0$b;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/utility/j0$b;->b:Lcom/hyprmx/android/sdk/utility/j0$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "NAVIGATION_BLOCKED"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hyprmx/android/sdk/utility/j0;-><init>(Ljava/lang/String;I)V

    return-void
.end method
