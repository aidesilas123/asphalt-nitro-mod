###### Class com.google.protobuf.BoolValue.b (com.google.protobuf.BoolValue$b)
.class public final Lcom/google/protobuf/BoolValue$b;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "BoolValue.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BoolValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lcom/google/protobuf/BoolValue;",
        "Lcom/google/protobuf/BoolValue$b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/protobuf/BoolValue;->access$000()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/BoolValue$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/BoolValue$b;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValue()Lcom/google/protobuf/BoolValue$b;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/BoolValue;

    invoke-static {v0}, Lcom/google/protobuf/BoolValue;->access$200(Lcom/google/protobuf/BoolValue;)V

    return-object p0
.end method

.method public getValue()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/BoolValue;

    invoke-virtual {v0}, Lcom/google/protobuf/BoolValue;->getValue()Z

    move-result v0

    return v0
.end method

.method public setValue(Z)Lcom/google/protobuf/BoolValue$b;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/BoolValue;

    invoke-static {v0, p1}, Lcom/google/protobuf/BoolValue;->access$100(Lcom/google/protobuf/BoolValue;Z)V

    return-object p0
.end method
