###### Class com.hyprmx.android.sdk.utility.p (com.hyprmx.android.sdk.utility.p)
.class public abstract Lcom/hyprmx/android/sdk/utility/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/utility/p$b;,
        Lcom/hyprmx/android/sdk/utility/p$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/hyprmx/android/sdk/utility/p;-><init>()V

    return-void
.end method

###### Class com.hyprmx.android.sdk.utility.p.a (com.hyprmx.android.sdk.utility.p$a)
.class public final Lcom/hyprmx/android/sdk/utility/p$a;
.super Lcom/hyprmx/android/sdk/utility/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/hyprmx/android/sdk/utility/p$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/utility/p$a;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/utility/p$a;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/utility/p$a;->a:Lcom/hyprmx/android/sdk/utility/p$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/utility/p;-><init>(I)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.utility.p.b (com.hyprmx.android.sdk.utility.p$b)
.class public final Lcom/hyprmx/android/sdk/utility/p$b;
.super Lcom/hyprmx/android/sdk/utility/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "googleAdId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/utility/p;-><init>(I)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/p$b;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/hyprmx/android/sdk/utility/p$b;->b:Z

    return-void
.end method
