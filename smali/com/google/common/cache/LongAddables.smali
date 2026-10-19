###### Class com.google.common.cache.LongAddables (com.google.common.cache.LongAddables)
.class final Lcom/google/common/cache/LongAddables;
.super Ljava/lang/Object;
.source "LongAddables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/LongAddables$c;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/m<",
            "Lcom/google/common/cache/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    new-instance v0, Lcom/google/common/cache/g;

    invoke-direct {v0}, Lcom/google/common/cache/g;-><init>()V

    new-instance v0, Lcom/google/common/cache/LongAddables$a;

    invoke-direct {v0}, Lcom/google/common/cache/LongAddables$a;-><init>()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_10

    :catchall_b
    new-instance v0, Lcom/google/common/cache/LongAddables$b;

    invoke-direct {v0}, Lcom/google/common/cache/LongAddables$b;-><init>()V

    :goto_10
    sput-object v0, Lcom/google/common/cache/LongAddables;->a:Lcom/google/common/base/m;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/common/cache/f;
    .registers 1

    sget-object v0, Lcom/google/common/cache/LongAddables;->a:Lcom/google/common/base/m;

    invoke-interface {v0}, Lcom/google/common/base/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/f;

    return-object v0
.end method

###### Class com.google.common.cache.LongAddables.a (com.google.common.cache.LongAddables$a)
.class Lcom/google/common/cache/LongAddables$a;
.super Ljava/lang/Object;
.source "LongAddables.java"

# interfaces
.implements Lcom/google/common/base/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/m<",
        "Lcom/google/common/cache/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/f;
    .registers 2

    new-instance v0, Lcom/google/common/cache/g;

    invoke-direct {v0}, Lcom/google/common/cache/g;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/cache/LongAddables$a;->a()Lcom/google/common/cache/f;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.cache.LongAddables.b (com.google.common.cache.LongAddables$b)
.class Lcom/google/common/cache/LongAddables$b;
.super Ljava/lang/Object;
.source "LongAddables.java"

# interfaces
.implements Lcom/google/common/base/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/m<",
        "Lcom/google/common/cache/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/f;
    .registers 3

    new-instance v0, Lcom/google/common/cache/LongAddables$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/cache/LongAddables$c;-><init>(Lcom/google/common/cache/LongAddables$a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/cache/LongAddables$b;->a()Lcom/google/common/cache/f;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.cache.LongAddables.c (com.google.common.cache.LongAddables$c)
.class final Lcom/google/common/cache/LongAddables$c;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "LongAddables.java"

# interfaces
.implements Lcom/google/common/cache/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/cache/LongAddables$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/cache/LongAddables$c;-><init>()V

    return-void
.end method
