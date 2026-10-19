###### Class androidx.core.database.CursorWindowCompat (androidx.core.database.CursorWindowCompat)
.class public final Landroidx/core/database/CursorWindowCompat;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/database/CursorWindowCompat$Api15Impl;,
        Landroidx/core/database/CursorWindowCompat$Api28Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;J)Landroid/database/CursorWindow;
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1, p2}, Landroidx/core/database/CursorWindowCompat$Api28Impl;->createCursorWindow(Ljava/lang/String;J)Landroid/database/CursorWindow;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 p1, 0xf

    if-lt v0, p1, :cond_14

    invoke-static {p0}, Landroidx/core/database/CursorWindowCompat$Api15Impl;->createCursorWindow(Ljava/lang/String;)Landroid/database/CursorWindow;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance p0, Landroid/database/CursorWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Z)V

    return-object p0
.end method

###### Class androidx.core.database.CursorWindowCompat.Api15Impl (androidx.core.database.CursorWindowCompat$Api15Impl)
.class Landroidx/core/database/CursorWindowCompat$Api15Impl;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/database/CursorWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api15Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCursorWindow(Ljava/lang/String;)Landroid/database/CursorWindow;
    .registers 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    new-instance v0, Landroid/database/CursorWindow;

    invoke-direct {v0, p0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

###### Class androidx.core.database.CursorWindowCompat.Api28Impl (androidx.core.database.CursorWindowCompat$Api28Impl)
.class Landroidx/core/database/CursorWindowCompat$Api28Impl;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/database/CursorWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCursorWindow(Ljava/lang/String;J)Landroid/database/CursorWindow;
    .registers 4
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    new-instance v0, Landroid/database/CursorWindow;

    invoke-direct {v0, p0, p1, p2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method
