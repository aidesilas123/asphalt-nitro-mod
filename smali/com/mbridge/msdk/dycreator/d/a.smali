###### Class com.mbridge.msdk.dycreator.d.a (com.mbridge.msdk.dycreator.d.a)
.class public final Lcom/mbridge/msdk/dycreator/d/a;
.super Ljava/lang/Object;
.source "SubjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/dycreator/d/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/mbridge/msdk/dycreator/d/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/dycreator/d/a;
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/dycreator/d/a;->a:Lcom/mbridge/msdk/dycreator/d/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/mbridge/msdk/dycreator/d/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/mbridge/msdk/dycreator/d/a;->a:Lcom/mbridge/msdk/dycreator/d/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/mbridge/msdk/dycreator/d/a;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/d/a;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/dycreator/d/a;->a:Lcom/mbridge/msdk/dycreator/d/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/mbridge/msdk/dycreator/d/a;->a:Lcom/mbridge/msdk/dycreator/d/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/mbridge/msdk/dycreator/d/a$a;)Lcom/mbridge/msdk/dycreator/g/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mbridge/msdk/dycreator/g/a;",
            ">(",
            "Lcom/mbridge/msdk/dycreator/d/a$a;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/mbridge/msdk/dycreator/d/a$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_16

    const/4 p1, 0x0

    goto :goto_2d

    :cond_16
    new-instance p1, Lcom/mbridge/msdk/dycreator/g/h;

    invoke-direct {p1}, Lcom/mbridge/msdk/dycreator/g/h;-><init>()V

    goto :goto_2d

    :cond_1c
    new-instance p1, Lcom/mbridge/msdk/dycreator/g/f;

    invoke-direct {p1}, Lcom/mbridge/msdk/dycreator/g/f;-><init>()V

    goto :goto_2d

    :cond_22
    new-instance p1, Lcom/mbridge/msdk/dycreator/g/c;

    invoke-direct {p1}, Lcom/mbridge/msdk/dycreator/g/c;-><init>()V

    goto :goto_2d

    :cond_28
    new-instance p1, Lcom/mbridge/msdk/dycreator/g/d;

    invoke-direct {p1}, Lcom/mbridge/msdk/dycreator/g/d;-><init>()V

    :goto_2d
    return-object p1
.end method
