package io.didomi.iabtcf.encoder.exceptions;

import com.json.o2;
import io.didomi.iabtcf.decoder.utils.FieldDefs;
import io.didomi.iabtcf.decoder.utils.Optional;

/* JADX INFO: loaded from: classes4.dex */
public class ValueOverflowException extends RuntimeException {
    private static final long serialVersionUID = 8604885489107552868L;
    private final Optional<FieldDefs> field;
    private final Optional<Long> max;
    private final Optional<Long> value;

    public ValueOverflowException() {
        this.field = Optional.empty();
        this.max = Optional.empty();
        this.value = Optional.empty();
    }

    public ValueOverflowException(long j, long j2) {
        this.max = Optional.empty();
        this.value = Optional.of(Long.valueOf(j));
        this.field = Optional.empty();
    }

    public ValueOverflowException(long j, long j2, FieldDefs fieldDefs) {
        this.max = Optional.of(Long.valueOf(j2));
        this.value = Optional.of(Long.valueOf(j));
        this.field = Optional.of(fieldDefs);
    }

    public ValueOverflowException(long j, FieldDefs fieldDefs) {
        this.max = Optional.empty();
        this.value = Optional.of(Long.valueOf(j));
        this.field = Optional.empty();
    }

    public Optional<FieldDefs> getField() {
        return this.field;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "ValueOverflowException [field=" + this.field + ", max=" + this.max + ", value=" + this.value + o2.i.f6491e;
    }
}
