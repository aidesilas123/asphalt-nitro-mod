###### Class com.google.common.primitives.d (com.google.common.primitives.d)
.class final Lcom/google/common/primitives/d;
.super Ljava/lang/Object;
.source "ParseRequest.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/primitives/d;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/common/primitives/d;->b:I

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/google/common/primitives/d;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_3c

    const-string v1, "0X"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_3c

    :cond_1e
    const/16 v1, 0x23

    const/4 v3, 0x1

    if-ne v0, v1, :cond_28

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_41

    :cond_28
    const/16 v1, 0x30

    if-ne v0, v1, :cond_39

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_39

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x8

    goto :goto_41

    :cond_39
    const/16 v2, 0xa

    goto :goto_41

    :cond_3c
    :goto_3c
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_41
    new-instance v0, Lcom/google/common/primitives/d;

    invoke-direct {v0, p0, v2}, Lcom/google/common/primitives/d;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_47
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "empty string"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
