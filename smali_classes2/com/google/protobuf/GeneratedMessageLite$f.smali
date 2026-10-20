###### Class com.google.protobuf.GeneratedMessageLite.f (com.google.protobuf.GeneratedMessageLite$f)
.class final Lcom/google/protobuf/GeneratedMessageLite$f;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/FieldSet$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/FieldSet$b<",
        "Lcom/google/protobuf/GeneratedMessageLite$f;",
        ">;"
    }
.end annotation


# instance fields
.field final enumTypeMap:Lcom/google/protobuf/Internal$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$d<",
            "*>;"
        }
    .end annotation
.end field

.field final isPacked:Z

.field final isRepeated:Z

.field final number:I

.field final type:Lcom/google/protobuf/WireFormat$FieldType;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Internal$d;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Internal$d<",
            "*>;I",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->enumTypeMap:Lcom/google/protobuf/Internal$d;

    iput p2, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->number:I

    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->type:Lcom/google/protobuf/WireFormat$FieldType;

    iput-boolean p4, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated:Z

    iput-boolean p5, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/protobuf/GeneratedMessageLite$f;)I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->number:I

    iget p1, p1, Lcom/google/protobuf/GeneratedMessageLite$f;->number:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$f;->compareTo(Lcom/google/protobuf/GeneratedMessageLite$f;)I

    move-result p1

    return p1
.end method

.method public getEnumType()Lcom/google/protobuf/Internal$d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$d<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->enumTypeMap:Lcom/google/protobuf/Internal$d;

    return-object v0
.end method

.method public getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->type:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/google/protobuf/WireFormat$FieldType;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->type:Lcom/google/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->number:I

    return v0
.end method

.method public internalMergeFrom(Lcom/google/protobuf/q0$a;Lcom/google/protobuf/q0;)Lcom/google/protobuf/q0$a;
    .registers 3

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$b;

    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    return-object p1
.end method

.method public isPacked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked:Z

    return v0
.end method

.method public isRepeated()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated:Z

    return v0
.end method
