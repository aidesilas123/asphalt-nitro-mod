###### Class com.applovin.exoplayer2.k.t (com.applovin.exoplayer2.k.t)
.class public interface abstract Lcom/applovin/exoplayer2/k/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/k/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/k/t$e;,
        Lcom/applovin/exoplayer2/k/t$d;,
        Lcom/applovin/exoplayer2/k/t$a;,
        Lcom/applovin/exoplayer2/k/t$c;,
        Lcom/applovin/exoplayer2/k/t$f;,
        Lcom/applovin/exoplayer2/k/t$b;
    }
.end annotation


# static fields
.field public static final aaJ:Lcom/applovin/exoplayer2/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/k/c0;->a:Lcom/applovin/exoplayer2/k/c0;

    sput-object v0, Lcom/applovin/exoplayer2/k/t;->aaJ:Lcom/applovin/exoplayer2/common/base/Predicate;

    return-void
.end method

###### Class com.applovin.exoplayer2.k.t.a (com.applovin.exoplayer2.k.t$a)
.class public final Lcom/applovin/exoplayer2/k/t$a;
.super Lcom/applovin/exoplayer2/k/t$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;)V
    .registers 9

    const-string v1, "Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted"

    const/16 v4, 0x7d7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/k/t$c;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;II)V

    return-void
.end method

###### Class com.applovin.exoplayer2.k.t.b (com.applovin.exoplayer2.k.t$b)
.class public interface abstract Lcom/applovin/exoplayer2/k/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/k/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract synthetic of()Lcom/applovin/exoplayer2/k/i;
.end method

.method public abstract ox()Lcom/applovin/exoplayer2/k/t;
.end method

###### Class com.applovin.exoplayer2.k.t.c (com.applovin.exoplayer2.k.t$c)
.class public Lcom/applovin/exoplayer2/k/t$c;
.super Lcom/applovin/exoplayer2/k/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final bs:I

.field public final tw:Lcom/applovin/exoplayer2/k/l;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/k/l;II)V
    .registers 4

    invoke-static {p2, p3}, Lcom/applovin/exoplayer2/k/t$c;->J(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/k/j;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/t$c;->tw:Lcom/applovin/exoplayer2/k/l;

    iput p3, p0, Lcom/applovin/exoplayer2/k/t$c;->bs:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;II)V
    .registers 5

    invoke-static {p3, p4}, Lcom/applovin/exoplayer2/k/t$c;->J(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/applovin/exoplayer2/k/j;-><init>(Ljava/lang/Throwable;I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/k/t$c;->tw:Lcom/applovin/exoplayer2/k/l;

    iput p4, p0, Lcom/applovin/exoplayer2/k/t$c;->bs:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/applovin/exoplayer2/k/l;II)V
    .registers 5

    invoke-static {p3, p4}, Lcom/applovin/exoplayer2/k/t$c;->J(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/applovin/exoplayer2/k/j;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/k/t$c;->tw:Lcom/applovin/exoplayer2/k/l;

    iput p4, p0, Lcom/applovin/exoplayer2/k/t$c;->bs:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;II)V
    .registers 6
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p4, p5}, Lcom/applovin/exoplayer2/k/t$c;->J(II)I

    move-result p4

    invoke-direct {p0, p1, p2, p4}, Lcom/applovin/exoplayer2/k/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    iput-object p3, p0, Lcom/applovin/exoplayer2/k/t$c;->tw:Lcom/applovin/exoplayer2/k/l;

    iput p5, p0, Lcom/applovin/exoplayer2/k/t$c;->bs:I

    return-void
.end method

.method private static J(II)I
    .registers 3

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    const/16 p0, 0x7d1

    :cond_9
    return p0
.end method

.method public static a(Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;I)Lcom/applovin/exoplayer2/k/t$c;
    .registers 6

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    const/16 v2, 0x7d7

    if-eqz v1, :cond_d

    const/16 v0, 0x7d2

    goto :goto_27

    :cond_d
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_14

    const/16 v0, 0x3ec

    goto :goto_27

    :cond_14
    if-eqz v0, :cond_25

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleartext.*not permitted.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x7d7

    goto :goto_27

    :cond_25
    const/16 v0, 0x7d1

    :goto_27
    if-ne v0, v2, :cond_2f

    new-instance p2, Lcom/applovin/exoplayer2/k/t$a;

    invoke-direct {p2, p0, p1}, Lcom/applovin/exoplayer2/k/t$a;-><init>(Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;)V

    goto :goto_35

    :cond_2f
    new-instance v1, Lcom/applovin/exoplayer2/k/t$c;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/applovin/exoplayer2/k/t$c;-><init>(Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;II)V

    move-object p2, v1

    :goto_35
    return-object p2
.end method

###### Class com.applovin.exoplayer2.k.t.d (com.applovin.exoplayer2.k.t$d)
.class public final Lcom/applovin/exoplayer2/k/t$d;
.super Lcom/applovin/exoplayer2/k/t$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final aaK:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/exoplayer2/k/l;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d3

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/applovin/exoplayer2/k/t$c;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/k/l;II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/t$d;->aaK:Ljava/lang/String;

    return-void
.end method

###### Class com.applovin.exoplayer2.k.t.e (com.applovin.exoplayer2.k.t$e)
.class public final Lcom/applovin/exoplayer2/k/t$e;
.super Lcom/applovin/exoplayer2/k/t$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final aaC:I

.field public final aaL:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final aaM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final aaN:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/applovin/exoplayer2/k/l;[B)V
    .registers 15
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/applovin/exoplayer2/k/l;",
            "[B)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x7d4

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/applovin/exoplayer2/k/t$c;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;II)V

    iput p1, p0, Lcom/applovin/exoplayer2/k/t$e;->aaC:I

    iput-object p2, p0, Lcom/applovin/exoplayer2/k/t$e;->aaL:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/exoplayer2/k/t$e;->aaM:Ljava/util/Map;

    iput-object p6, p0, Lcom/applovin/exoplayer2/k/t$e;->aaN:[B

    return-void
.end method

###### Class com.applovin.exoplayer2.k.t.f (com.applovin.exoplayer2.k.t$f)
.class public final Lcom/applovin/exoplayer2/k/t$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private final aaO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aaP:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/t$f;->aaO:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized oy()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/t$f;->aaP:Ljava/util/Map;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/t$f;->aaO:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/t$f;->aaP:Ljava/util/Map;

    :cond_12
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/t$f;->aaP:Ljava/util/Map;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.applovin.exoplayer2.k.c0 (com.applovin.exoplayer2.k.c0)
.class public final synthetic Lcom/applovin/exoplayer2/k/c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/common/base/Predicate;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/k/c0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/k/c0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/k/c0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/k/c0;->a:Lcom/applovin/exoplayer2/k/c0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/exoplayer2/k/g0;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
