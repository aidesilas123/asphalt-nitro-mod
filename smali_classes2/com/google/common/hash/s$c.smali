###### Class com.google.common.hash.s.c (com.google.common.hash.s$c)
.class final Lcom/google/common/hash/s$c;
.super Ljava/lang/Object;
.source "MessageDigestHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/hash/s$c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/common/hash/s$c;->b:I

    iput-object p3, p0, Lcom/google/common/hash/s$c;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/common/hash/s$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/hash/s$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/google/common/hash/s;

    iget-object v1, p0, Lcom/google/common/hash/s$c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/hash/s$c;->b:I

    iget-object v3, p0, Lcom/google/common/hash/s$c;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/hash/s;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method
