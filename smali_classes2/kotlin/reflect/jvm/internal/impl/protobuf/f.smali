###### Class kotlin.reflect.jvm.internal.impl.protobuf.f (kotlin.reflect.jvm.internal.impl.protobuf.f)
.class public Lkotlin/reflect/jvm/internal/impl/protobuf/f;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# instance fields
.field private a:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

.field private b:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

.field private volatile c:Z

.field protected volatile d:Lkotlin/reflect/jvm/internal/impl/protobuf/j;


# virtual methods
.method protected a(Lkotlin/reflect/jvm/internal/impl/protobuf/j;)V
    .registers 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    if-eqz v0, :cond_c

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_25

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    if-eqz v0, :cond_21

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/j;->getParserForType()Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    move-result-object p1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    invoke-interface {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    goto :goto_23

    :cond_21
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/j;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_23} :catch_23
    .catchall {:try_start_c .. :try_end_23} :catchall_25

    :catch_23
    :goto_23
    :try_start_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public b()I
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->c:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/j;->getSerializedSize()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v0

    return v0
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/protobuf/j;)Lkotlin/reflect/jvm/internal/impl/protobuf/j;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/j;)V

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    return-object p1
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/protobuf/j;)Lkotlin/reflect/jvm/internal/impl/protobuf/j;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->c:Z

    return-object v0
.end method
