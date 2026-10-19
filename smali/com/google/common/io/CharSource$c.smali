###### Class com.google.common.io.CharSource.c (com.google.common.io.CharSource$c)
.class final Lcom/google/common/io/CharSource$c;
.super Lcom/google/common/io/CharSource$d;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final c:Lcom/google/common/io/CharSource$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/io/CharSource$c;

    invoke-direct {v0}, Lcom/google/common/io/CharSource$c;-><init>()V

    sput-object v0, Lcom/google/common/io/CharSource$c;->c:Lcom/google/common/io/CharSource$c;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/common/io/CharSource$d;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i()Lcom/google/common/io/CharSource$c;
    .registers 1

    sget-object v0, Lcom/google/common/io/CharSource$c;->c:Lcom/google/common/io/CharSource$c;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CharSource.empty()"

    return-object v0
.end method
