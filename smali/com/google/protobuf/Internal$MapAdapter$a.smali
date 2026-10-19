###### Class com.google.protobuf.Internal.MapAdapter.a (com.google.protobuf.Internal$MapAdapter$a)
.class Lcom/google/protobuf/Internal$MapAdapter$a;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Lcom/google/protobuf/Internal$MapAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/Internal$MapAdapter;->newEnumConverter(Lcom/google/protobuf/Internal$d;Lcom/google/protobuf/Internal$c;)Lcom/google/protobuf/Internal$MapAdapter$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$MapAdapter$b<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$enumMap:Lcom/google/protobuf/Internal$d;

.field final synthetic val$unrecognizedValue:Lcom/google/protobuf/Internal$c;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Internal$d;Lcom/google/protobuf/Internal$c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/protobuf/Internal$MapAdapter$a;->val$enumMap:Lcom/google/protobuf/Internal$d;

    iput-object p2, p0, Lcom/google/protobuf/Internal$MapAdapter$a;->val$unrecognizedValue:Lcom/google/protobuf/Internal$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doBackward(Lcom/google/protobuf/Internal$c;)Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/Internal$c;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/protobuf/Internal$c;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Internal$MapAdapter$a;->doBackward(Lcom/google/protobuf/Internal$c;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public doForward(Ljava/lang/Integer;)Lcom/google/protobuf/Internal$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Internal$MapAdapter$a;->val$enumMap:Lcom/google/protobuf/Internal$d;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$d;->findValueByNumber(I)Lcom/google/protobuf/Internal$c;

    move-result-object p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/protobuf/Internal$MapAdapter$a;->val$unrecognizedValue:Lcom/google/protobuf/Internal$c;

    :cond_e
    return-object p1
.end method

.method public bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Internal$MapAdapter$a;->doForward(Ljava/lang/Integer;)Lcom/google/protobuf/Internal$c;

    move-result-object p1

    return-object p1
.end method
