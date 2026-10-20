###### Class com.google.common.hash.h (com.google.common.hash.h)
.class final Lcom/google/common/hash/h;
.super Lcom/google/common/hash/c;
.source "Crc32cHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/h$a;
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/hash/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/hash/h;

    invoke-direct {v0}, Lcom/google/common/hash/h;-><init>()V

    sput-object v0, Lcom/google/common/hash/h;->a:Lcom/google/common/hash/l;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public e()Lcom/google/common/hash/m;
    .registers 2

    new-instance v0, Lcom/google/common/hash/h$a;

    invoke-direct {v0}, Lcom/google/common/hash/h$a;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Hashing.crc32c()"

    return-object v0
.end method
