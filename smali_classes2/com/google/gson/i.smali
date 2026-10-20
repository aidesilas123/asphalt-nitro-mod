###### Class com.google.gson.i (com.google.gson.i)
.class public final Lcom/google/gson/i;
.super Lcom/google/gson/g;
.source "JsonNull.java"


# static fields
.field public static final a:Lcom/google/gson/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/gson/i;

    invoke-direct {v0}, Lcom/google/gson/i;-><init>()V

    sput-object v0, Lcom/google/gson/i;->a:Lcom/google/gson/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/g;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lcom/google/gson/i;

    return p1
.end method

.method public hashCode()I
    .registers 2

    const-class v0, Lcom/google/gson/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
