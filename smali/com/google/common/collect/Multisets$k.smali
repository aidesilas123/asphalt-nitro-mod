###### Class com.google.common.collect.Multisets.k (com.google.common.collect.Multisets$k)
.class Lcom/google/common/collect/Multisets$k;
.super Lcom/google/common/collect/Multisets$f;
.source "Multisets.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$f<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$f;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Multisets$k;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/Multisets$k;->b:I

    const-string p1, "count"

    invoke-static {p2, p1}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$k;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/Multisets$k;->b:I

    return v0
.end method
