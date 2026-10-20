###### Class gateway.v1.TimestampsOuterClass.Timestamps.a (gateway.v1.TimestampsOuterClass$Timestamps$a)
.class public final Lgateway/v1/TimestampsOuterClass$Timestamps$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "TimestampsOuterClass.java"

# interfaces
.implements Lgateway/v1/TimestampsOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/TimestampsOuterClass$Timestamps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/TimestampsOuterClass$Timestamps;",
        "Lgateway/v1/TimestampsOuterClass$Timestamps$a;",
        ">;",
        "Lgateway/v1/TimestampsOuterClass$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/TimestampsOuterClass$Timestamps;->access$000()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/TimestampsOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/TimestampsOuterClass$Timestamps$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(J)Lgateway/v1/TimestampsOuterClass$Timestamps$a;
    .registers 4

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p1, p2}, Lgateway/v1/TimestampsOuterClass$Timestamps;->access$400(Lgateway/v1/TimestampsOuterClass$Timestamps;J)V

    return-object p0
.end method

.method public d(Lcom/google/protobuf/Timestamp;)Lgateway/v1/TimestampsOuterClass$Timestamps$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p1}, Lgateway/v1/TimestampsOuterClass$Timestamps;->access$100(Lgateway/v1/TimestampsOuterClass$Timestamps;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public getTimestamp()Lcom/google/protobuf/Timestamp;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v0}, Lgateway/v1/TimestampsOuterClass$Timestamps;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasTimestamp()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v0}, Lgateway/v1/TimestampsOuterClass$Timestamps;->hasTimestamp()Z

    move-result v0

    return v0
.end method
