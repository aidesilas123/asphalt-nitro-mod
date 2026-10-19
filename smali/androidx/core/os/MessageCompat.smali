###### Class androidx.core.os.MessageCompat (androidx.core.os.MessageCompat)
.class public final Landroidx/core/os/MessageCompat;
.super Ljava/lang/Object;
.source "MessageCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/MessageCompat$Api22Impl;
    }
.end annotation


# static fields
.field private static sTryIsAsynchronous:Z = true

.field private static sTrySetAsynchronous:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAsynchronous(Landroid/os/Message;)Z
    .registers 4
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidx/core/os/MessageCompat$Api22Impl;->isAsynchronous(Landroid/os/Message;)Z

    move-result p0

    return p0

    :cond_b
    sget-boolean v1, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1b

    :try_start_14
    invoke-static {p0}, Landroidx/core/os/MessageCompat$Api22Impl;->isAsynchronous(Landroid/os/Message;)Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/NoSuchMethodError; {:try_start_14 .. :try_end_18} :catch_19

    return p0

    :catch_19
    sput-boolean v2, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    :cond_1b
    return v2
.end method

.method public static setAsynchronous(Landroid/os/Message;Z)V
    .registers 4
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1}, Landroidx/core/os/MessageCompat$Api22Impl;->setAsynchronous(Landroid/os/Message;Z)V

    return-void

    :cond_a
    sget-boolean v1, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    if-eqz v1, :cond_19

    const/16 v1, 0x10

    if-lt v0, v1, :cond_19

    :try_start_12
    invoke-static {p0, p1}, Landroidx/core/os/MessageCompat$Api22Impl;->setAsynchronous(Landroid/os/Message;Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchMethodError; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_19

    :catch_16
    const/4 p0, 0x0

    sput-boolean p0, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    :cond_19
    :goto_19
    return-void
.end method

###### Class androidx.core.os.MessageCompat.Api22Impl (androidx.core.os.MessageCompat$Api22Impl)
.class Landroidx/core/os/MessageCompat$Api22Impl;
.super Ljava/lang/Object;
.source "MessageCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x16
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/MessageCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api22Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAsynchronous(Landroid/os/Message;)Z
    .registers 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-virtual {p0}, Landroid/os/Message;->isAsynchronous()Z

    move-result p0

    return p0
.end method

.method static setAsynchronous(Landroid/os/Message;Z)V
    .registers 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    return-void
.end method
