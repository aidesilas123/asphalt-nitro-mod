###### Class com.google.common.hash.Funnels (com.google.common.hash.Funnels)
.class public final Lcom/google/common/hash/Funnels;
.super Ljava/lang/Object;
.source "Funnels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Funnels$b;,
        Lcom/google/common/hash/Funnels$LongFunnel;,
        Lcom/google/common/hash/Funnels$a;,
        Lcom/google/common/hash/Funnels$IntegerFunnel;,
        Lcom/google/common/hash/Funnels$c;,
        Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;,
        Lcom/google/common/hash/Funnels$ByteArrayFunnel;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asOutputStream(Lcom/google/common/hash/v;)Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Lcom/google/common/hash/Funnels$b;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Funnels$b;-><init>(Lcom/google/common/hash/v;)V

    return-object v0
.end method

.method public static byteArrayFunnel()Lcom/google/common/hash/k;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/k<",
            "[B>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/hash/Funnels$ByteArrayFunnel;->a:Lcom/google/common/hash/Funnels$ByteArrayFunnel;

    return-object v0
.end method

.method public static integerFunnel()Lcom/google/common/hash/k;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/k<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/hash/Funnels$IntegerFunnel;->a:Lcom/google/common/hash/Funnels$IntegerFunnel;

    return-object v0
.end method

.method public static longFunnel()Lcom/google/common/hash/k;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->a:Lcom/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method

.method public static sequentialFunnel(Lcom/google/common/hash/k;)Lcom/google/common/hash/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/k<",
            "TE;>;)",
            "Lcom/google/common/hash/k<",
            "Ljava/lang/Iterable<",
            "+TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/hash/Funnels$a;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Funnels$a;-><init>(Lcom/google/common/hash/k;)V

    return-object v0
.end method

.method public static stringFunnel(Ljava/nio/charset/Charset;)Lcom/google/common/hash/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/hash/k<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/hash/Funnels$c;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Funnels$c;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static unencodedCharsFunnel()Lcom/google/common/hash/k;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/k<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->a:Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-object v0
.end method

###### Class com.google.common.hash.Funnels.ByteArrayFunnel (com.google.common.hash.Funnels$ByteArrayFunnel)
.class final enum Lcom/google/common/hash/Funnels$ByteArrayFunnel;
.super Ljava/lang/Enum;
.source "Funnels.java"

# interfaces
.implements Lcom/google/common/hash/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ByteArrayFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/Funnels$ByteArrayFunnel;",
        ">;",
        "Lcom/google/common/hash/k<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/Funnels$ByteArrayFunnel;

.field private static final synthetic b:[Lcom/google/common/hash/Funnels$ByteArrayFunnel;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/hash/Funnels$ByteArrayFunnel;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$ByteArrayFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$ByteArrayFunnel;->a:Lcom/google/common/hash/Funnels$ByteArrayFunnel;

    invoke-static {}, Lcom/google/common/hash/Funnels$ByteArrayFunnel;->e()[Lcom/google/common/hash/Funnels$ByteArrayFunnel;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Funnels$ByteArrayFunnel;->b:[Lcom/google/common/hash/Funnels$ByteArrayFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/hash/Funnels$ByteArrayFunnel;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/Funnels$ByteArrayFunnel;

    sget-object v1, Lcom/google/common/hash/Funnels$ByteArrayFunnel;->a:Lcom/google/common/hash/Funnels$ByteArrayFunnel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$ByteArrayFunnel;
    .registers 2

    const-class v0, Lcom/google/common/hash/Funnels$ByteArrayFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/Funnels$ByteArrayFunnel;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$ByteArrayFunnel;
    .registers 1

    sget-object v0, Lcom/google/common/hash/Funnels$ByteArrayFunnel;->b:[Lcom/google/common/hash/Funnels$ByteArrayFunnel;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$ByteArrayFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$ByteArrayFunnel;

    return-object v0
.end method


# virtual methods
.method public f([BLcom/google/common/hash/v;)V
    .registers 3

    invoke-interface {p2, p1}, Lcom/google/common/hash/v;->a([B)Lcom/google/common/hash/v;

    return-void
.end method

.method public bridge synthetic o(Ljava/lang/Object;Lcom/google/common/hash/v;)V
    .registers 3

    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$ByteArrayFunnel;->f([BLcom/google/common/hash/v;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Funnels.byteArrayFunnel()"

    return-object v0
.end method

###### Class com.google.common.hash.Funnels.IntegerFunnel (com.google.common.hash.Funnels$IntegerFunnel)
.class final enum Lcom/google/common/hash/Funnels$IntegerFunnel;
.super Ljava/lang/Enum;
.source "Funnels.java"

# interfaces
.implements Lcom/google/common/hash/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IntegerFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/Funnels$IntegerFunnel;",
        ">;",
        "Lcom/google/common/hash/k<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/Funnels$IntegerFunnel;

.field private static final synthetic b:[Lcom/google/common/hash/Funnels$IntegerFunnel;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/hash/Funnels$IntegerFunnel;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$IntegerFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$IntegerFunnel;->a:Lcom/google/common/hash/Funnels$IntegerFunnel;

    invoke-static {}, Lcom/google/common/hash/Funnels$IntegerFunnel;->e()[Lcom/google/common/hash/Funnels$IntegerFunnel;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Funnels$IntegerFunnel;->b:[Lcom/google/common/hash/Funnels$IntegerFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/hash/Funnels$IntegerFunnel;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/Funnels$IntegerFunnel;

    sget-object v1, Lcom/google/common/hash/Funnels$IntegerFunnel;->a:Lcom/google/common/hash/Funnels$IntegerFunnel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$IntegerFunnel;
    .registers 2

    const-class v0, Lcom/google/common/hash/Funnels$IntegerFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/Funnels$IntegerFunnel;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$IntegerFunnel;
    .registers 1

    sget-object v0, Lcom/google/common/hash/Funnels$IntegerFunnel;->b:[Lcom/google/common/hash/Funnels$IntegerFunnel;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$IntegerFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$IntegerFunnel;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Integer;Lcom/google/common/hash/v;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/google/common/hash/v;->putInt(I)Lcom/google/common/hash/v;

    return-void
.end method

.method public bridge synthetic o(Ljava/lang/Object;Lcom/google/common/hash/v;)V
    .registers 3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$IntegerFunnel;->f(Ljava/lang/Integer;Lcom/google/common/hash/v;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Funnels.integerFunnel()"

    return-object v0
.end method

###### Class com.google.common.hash.Funnels.LongFunnel (com.google.common.hash.Funnels$LongFunnel)
.class final enum Lcom/google/common/hash/Funnels$LongFunnel;
.super Ljava/lang/Enum;
.source "Funnels.java"

# interfaces
.implements Lcom/google/common/hash/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LongFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/Funnels$LongFunnel;",
        ">;",
        "Lcom/google/common/hash/k<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/Funnels$LongFunnel;

.field private static final synthetic b:[Lcom/google/common/hash/Funnels$LongFunnel;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/hash/Funnels$LongFunnel;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$LongFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->a:Lcom/google/common/hash/Funnels$LongFunnel;

    invoke-static {}, Lcom/google/common/hash/Funnels$LongFunnel;->e()[Lcom/google/common/hash/Funnels$LongFunnel;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->b:[Lcom/google/common/hash/Funnels$LongFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/hash/Funnels$LongFunnel;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/Funnels$LongFunnel;

    sget-object v1, Lcom/google/common/hash/Funnels$LongFunnel;->a:Lcom/google/common/hash/Funnels$LongFunnel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$LongFunnel;
    .registers 2

    const-class v0, Lcom/google/common/hash/Funnels$LongFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/Funnels$LongFunnel;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$LongFunnel;
    .registers 1

    sget-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->b:[Lcom/google/common/hash/Funnels$LongFunnel;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$LongFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Long;Lcom/google/common/hash/v;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/hash/v;->putLong(J)Lcom/google/common/hash/v;

    return-void
.end method

.method public bridge synthetic o(Ljava/lang/Object;Lcom/google/common/hash/v;)V
    .registers 3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$LongFunnel;->f(Ljava/lang/Long;Lcom/google/common/hash/v;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Funnels.longFunnel()"

    return-object v0
.end method

###### Class com.google.common.hash.Funnels.UnencodedCharsFunnel (com.google.common.hash.Funnels$UnencodedCharsFunnel)
.class final enum Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;
.super Ljava/lang/Enum;
.source "Funnels.java"

# interfaces
.implements Lcom/google/common/hash/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UnencodedCharsFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;",
        ">;",
        "Lcom/google/common/hash/k<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

.field private static final synthetic b:[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->a:Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    invoke-static {}, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->e()[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->b:[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    sget-object v1, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->a:Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;
    .registers 2

    const-class v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;
    .registers 1

    sget-object v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->b:[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/CharSequence;Lcom/google/common/hash/v;)V
    .registers 3

    invoke-interface {p2, p1}, Lcom/google/common/hash/v;->c(Ljava/lang/CharSequence;)Lcom/google/common/hash/v;

    return-void
.end method

.method public bridge synthetic o(Ljava/lang/Object;Lcom/google/common/hash/v;)V
    .registers 3

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->f(Ljava/lang/CharSequence;Lcom/google/common/hash/v;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Funnels.unencodedCharsFunnel()"

    return-object v0
.end method

###### Class com.google.common.hash.Funnels.a (com.google.common.hash.Funnels$a)
.class Lcom/google/common/hash/Funnels$a;
.super Ljava/lang/Object;
.source "Funnels.java"

# interfaces
.implements Lcom/google/common/hash/k;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/hash/k<",
        "Ljava/lang/Iterable<",
        "+TE;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/hash/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/hash/k<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/hash/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/k<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/k;

    iput-object p1, p0, Lcom/google/common/hash/Funnels$a;->a:Lcom/google/common/hash/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;Lcom/google/common/hash/v;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Lcom/google/common/hash/v;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/hash/Funnels$a;->a:Lcom/google/common/hash/k;

    invoke-interface {v1, v0, p2}, Lcom/google/common/hash/k;->o(Ljava/lang/Object;Lcom/google/common/hash/v;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/common/hash/Funnels$a;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/google/common/hash/Funnels$a;

    iget-object v0, p0, Lcom/google/common/hash/Funnels$a;->a:Lcom/google/common/hash/k;

    iget-object p1, p1, Lcom/google/common/hash/Funnels$a;->a:Lcom/google/common/hash/k;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 3

    const-class v0, Lcom/google/common/hash/Funnels$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/hash/Funnels$a;->a:Lcom/google/common/hash/k;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic o(Ljava/lang/Object;Lcom/google/common/hash/v;)V
    .registers 3

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$a;->a(Ljava/lang/Iterable;Lcom/google/common/hash/v;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/common/hash/Funnels$a;->a:Lcom/google/common/hash/k;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Funnels.sequentialFunnel("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.hash.Funnels.b (com.google.common.hash.Funnels$b)
.class Lcom/google/common/hash/Funnels$b;
.super Ljava/io/OutputStream;
.source "Funnels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/google/common/hash/v;


# direct methods
.method constructor <init>(Lcom/google/common/hash/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/v;

    iput-object p1, p0, Lcom/google/common/hash/Funnels$b;->a:Lcom/google/common/hash/v;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/common/hash/Funnels$b;->a:Lcom/google/common/hash/v;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Funnels.asOutputStream("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/Funnels$b;->a:Lcom/google/common/hash/v;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lcom/google/common/hash/v;->b(B)Lcom/google/common/hash/v;

    return-void
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/Funnels$b;->a:Lcom/google/common/hash/v;

    invoke-interface {v0, p1}, Lcom/google/common/hash/v;->a([B)Lcom/google/common/hash/v;

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Lcom/google/common/hash/Funnels$b;->a:Lcom/google/common/hash/v;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/v;->d([BII)Lcom/google/common/hash/v;

    return-void
.end method

###### Class com.google.common.hash.Funnels.c (com.google.common.hash.Funnels$c)
.class Lcom/google/common/hash/Funnels$c;
.super Ljava/lang/Object;
.source "Funnels.java"

# interfaces
.implements Lcom/google/common/hash/k;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Funnels$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/hash/k<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/nio/charset/Charset;


# direct methods
.method constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/common/hash/Funnels$c;->a:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Lcom/google/common/hash/v;)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/hash/Funnels$c;->a:Ljava/nio/charset/Charset;

    invoke-interface {p2, p1, v0}, Lcom/google/common/hash/v;->e(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/v;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/common/hash/Funnels$c;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/google/common/hash/Funnels$c;

    iget-object v0, p0, Lcom/google/common/hash/Funnels$c;->a:Ljava/nio/charset/Charset;

    iget-object p1, p1, Lcom/google/common/hash/Funnels$c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 3

    const-class v0, Lcom/google/common/hash/Funnels$c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/hash/Funnels$c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic o(Ljava/lang/Object;Lcom/google/common/hash/v;)V
    .registers 3

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$c;->a(Ljava/lang/CharSequence;Lcom/google/common/hash/v;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/common/hash/Funnels$c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Funnels.stringFunnel("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/common/hash/Funnels$c$a;

    iget-object v1, p0, Lcom/google/common/hash/Funnels$c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Lcom/google/common/hash/Funnels$c$a;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

###### Class com.google.common.hash.Funnels.c.a (com.google.common.hash.Funnels$c$a)
.class Lcom/google/common/hash/Funnels$c$a;
.super Ljava/lang/Object;
.source "Funnels.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/Funnels$c$a;->a:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/hash/Funnels$c$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/Funnels;->stringFunnel(Ljava/nio/charset/Charset;)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method
