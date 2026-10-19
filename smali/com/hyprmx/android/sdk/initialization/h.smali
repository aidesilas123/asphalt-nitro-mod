###### Class com.hyprmx.android.sdk.initialization.h (com.hyprmx.android.sdk.initialization.h)
.class public abstract Lcom/hyprmx/android/sdk/initialization/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/initialization/h$a;,
        Lcom/hyprmx/android/sdk/initialization/h$b;,
        Lcom/hyprmx/android/sdk/initialization/h$c;
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

    invoke-direct {p0}, Lcom/hyprmx/android/sdk/initialization/h;-><init>()V

    return-void
.end method

###### Class com.hyprmx.android.sdk.initialization.h.a (com.hyprmx.android.sdk.initialization.h$a)
.class public final Lcom/hyprmx/android/sdk/initialization/h$a;
.super Lcom/hyprmx/android/sdk/initialization/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/initialization/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/hyprmx/android/sdk/initialization/h$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/initialization/h$a;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/initialization/h$a;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/initialization/h$a;->a:Lcom/hyprmx/android/sdk/initialization/h$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/initialization/h;-><init>(I)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.initialization.h.b (com.hyprmx.android.sdk.initialization.h$b)
.class public final Lcom/hyprmx/android/sdk/initialization/h$b;
.super Lcom/hyprmx/android/sdk/initialization/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/initialization/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/hyprmx/android/sdk/initialization/h$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/initialization/h$b;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/initialization/h$b;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/initialization/h$b;->a:Lcom/hyprmx/android/sdk/initialization/h$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/initialization/h;-><init>(I)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.initialization.h.c (com.hyprmx.android.sdk.initialization.h$c)
.class public final Lcom/hyprmx/android/sdk/initialization/h$c;
.super Lcom/hyprmx/android/sdk/initialization/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/initialization/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/core/j;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;)V
    .registers 3

    const-string v0, "hyprMXController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/initialization/h;-><init>(I)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/initialization/h$c;->a:Lcom/hyprmx/android/sdk/core/j;

    return-void
.end method
