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

###### Class com.mbridge.msdk.dycreator.d.a.AnonymousClass1 (com.mbridge.msdk.dycreator.d.a$1)
.class final synthetic Lcom/mbridge/msdk/dycreator/d/a$1;
.super Ljava/lang/Object;
.source "SubjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/mbridge/msdk/dycreator/d/a$a;->values()[Lcom/mbridge/msdk/dycreator/d/a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mbridge/msdk/dycreator/d/a$1;->a:[I

    :try_start_9
    sget-object v1, Lcom/mbridge/msdk/dycreator/d/a$a;->a:Lcom/mbridge/msdk/dycreator/d/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/mbridge/msdk/dycreator/d/a$1;->a:[I

    sget-object v1, Lcom/mbridge/msdk/dycreator/d/a$a;->b:Lcom/mbridge/msdk/dycreator/d/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/mbridge/msdk/dycreator/d/a$1;->a:[I

    sget-object v1, Lcom/mbridge/msdk/dycreator/d/a$a;->c:Lcom/mbridge/msdk/dycreator/d/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/mbridge/msdk/dycreator/d/a$1;->a:[I

    sget-object v1, Lcom/mbridge/msdk/dycreator/d/a$a;->d:Lcom/mbridge/msdk/dycreator/d/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class com.mbridge.msdk.dycreator.d.a.EnumC0395a (com.mbridge.msdk.dycreator.d.a$a)
.class public final enum Lcom/mbridge/msdk/dycreator/d/a$a;
.super Ljava/lang/Enum;
.source "SubjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mbridge/msdk/dycreator/d/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mbridge/msdk/dycreator/d/a$a;

.field public static final enum b:Lcom/mbridge/msdk/dycreator/d/a$a;

.field public static final enum c:Lcom/mbridge/msdk/dycreator/d/a$a;

.field public static final enum d:Lcom/mbridge/msdk/dycreator/d/a$a;

.field private static final synthetic e:[Lcom/mbridge/msdk/dycreator/d/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/mbridge/msdk/dycreator/d/a$a;

    const-string v1, "VIEW_OBSERVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/dycreator/d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/dycreator/d/a$a;->a:Lcom/mbridge/msdk/dycreator/d/a$a;

    new-instance v1, Lcom/mbridge/msdk/dycreator/d/a$a;

    const-string v3, "CLICK_OBSERVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mbridge/msdk/dycreator/d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mbridge/msdk/dycreator/d/a$a;->b:Lcom/mbridge/msdk/dycreator/d/a$a;

    new-instance v3, Lcom/mbridge/msdk/dycreator/d/a$a;

    const-string v5, "EFFECT_OBSERVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mbridge/msdk/dycreator/d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mbridge/msdk/dycreator/d/a$a;->c:Lcom/mbridge/msdk/dycreator/d/a$a;

    new-instance v5, Lcom/mbridge/msdk/dycreator/d/a$a;

    const-string v7, "REPORT_OBSERVER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mbridge/msdk/dycreator/d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mbridge/msdk/dycreator/d/a$a;->d:Lcom/mbridge/msdk/dycreator/d/a$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mbridge/msdk/dycreator/d/a$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/mbridge/msdk/dycreator/d/a$a;->e:[Lcom/mbridge/msdk/dycreator/d/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mbridge/msdk/dycreator/d/a$a;
    .registers 2

    const-class v0, Lcom/mbridge/msdk/dycreator/d/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mbridge/msdk/dycreator/d/a$a;

    return-object p0
.end method

.method public static values()[Lcom/mbridge/msdk/dycreator/d/a$a;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/dycreator/d/a$a;->e:[Lcom/mbridge/msdk/dycreator/d/a$a;

    invoke-virtual {v0}, [Lcom/mbridge/msdk/dycreator/d/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mbridge/msdk/dycreator/d/a$a;

    return-object v0
.end method
