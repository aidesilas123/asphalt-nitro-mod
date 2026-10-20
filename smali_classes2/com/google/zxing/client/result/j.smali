###### Class com.google.zxing.client.result.j (com.google.zxing.client.result.j)
.class public final Lcom/google/zxing/client/result/j;
.super Lcom/google/zxing/client/result/a;
.source "EmailDoCoMoResultParser.java"


# static fields
.field private static final f:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[a-zA-Z0-9@.!#$%&\'*+\\-/=?^_`{|}~]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/j;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/result/a;-><init>()V

    return-void
.end method

.method static p(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_18

    sget-object v0, Lcom/google/zxing/client/result/j;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method


# virtual methods
.method public bridge synthetic i(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/j;->q(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/h;

    move-result-object p1

    return-object p1
.end method

.method public q(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/h;
    .registers 10

    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->c(Lcom/google/zxing/d;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MATMSG:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    const-string v0, "TO:"

    invoke-static {v0, p1}, Lcom/google/zxing/client/result/a;->n(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    return-object v1

    :cond_17
    array-length v0, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v0, :cond_28

    aget-object v5, v3, v4

    invoke-static {v5}, Lcom/google/zxing/client/result/j;->p(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    return-object v1

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_28
    const-string v0, "SUB:"

    invoke-static {v0, p1, v2}, Lcom/google/zxing/client/result/a;->o(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string v0, "BODY:"

    invoke-static {v0, p1, v2}, Lcom/google/zxing/client/result/a;->o(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    new-instance p1, Lcom/google/zxing/client/result/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/client/result/h;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
