###### Class com.applovin.impl.sdk.network.e.b (com.applovin.impl.sdk.network.e$b)
.class public Lcom/applovin/impl/sdk/network/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/network/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/network/e$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/applovin/impl/sdk/network/e$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final aHT:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final aHI:I

.field private final aHU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aHV:[B

.field private final aHW:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Lcom/applovin/impl/sdk/network/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private final aHX:Ljava/util/concurrent/Executor;

.field private final aHY:I

.field private final aHr:Ljava/lang/String;

.field private final aHs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/network/e$b;->aHT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/applovin/impl/sdk/network/e$b$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/e$b$a;->a(Lcom/applovin/impl/sdk/network/e$b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHr:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/e$b$a;->b(Lcom/applovin/impl/sdk/network/e$b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHs:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/e$b$a;->c(Lcom/applovin/impl/sdk/network/e$b$a;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/e$b$a;->c(Lcom/applovin/impl/sdk/network/e$b$a;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1e

    :cond_1a
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_1e
    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHU:Ljava/util/Map;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/e$b$a;->d(Lcom/applovin/impl/sdk/network/e$b$a;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHV:[B

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/e$b$a;->e(Lcom/applovin/impl/sdk/network/e$b$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHI:I

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/e$b$a;->f(Lcom/applovin/impl/sdk/network/e$b$a;)Landroidx/core/util/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHW:Landroidx/core/util/Consumer;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/e$b$a;->g(Lcom/applovin/impl/sdk/network/e$b$a;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$b;->aHX:Ljava/util/concurrent/Executor;

    sget-object p1, Lcom/applovin/impl/sdk/network/e$b;->aHT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/sdk/network/e$b;->aHY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/network/e$b$a;Lcom/applovin/impl/sdk/network/e$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/e$b;-><init>(Lcom/applovin/impl/sdk/network/e$b$a;)V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/network/e$b;)[B
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHV:[B

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/network/e$b;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHX:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/sdk/network/e$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/sdk/network/e$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/sdk/network/e$b;)I
    .registers 1

    iget p0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHI:I

    return p0
.end method

.method static synthetic j(Lcom/applovin/impl/sdk/network/e$b;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHU:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/impl/sdk/network/e$b;)Landroidx/core/util/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHW:Landroidx/core/util/Consumer;

    return-object p0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/applovin/impl/sdk/network/e$b;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/e$b;->d(Lcom/applovin/impl/sdk/network/e$b;)I

    move-result p1

    return p1
.end method

.method public d(Lcom/applovin/impl/sdk/network/e$b;)I
    .registers 3

    iget v0, p0, Lcom/applovin/impl/sdk/network/e$b;->aHY:I

    iget p1, p1, Lcom/applovin/impl/sdk/network/e$b;->aHY:I

    sub-int/2addr v0, p1

    return v0
.end method
