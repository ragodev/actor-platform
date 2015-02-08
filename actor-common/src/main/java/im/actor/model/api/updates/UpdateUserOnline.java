package im.actor.model.api.updates;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import com.droidkit.bser.Bser;
import com.droidkit.bser.BserObject;
import com.droidkit.bser.BserValues;
import com.droidkit.bser.BserWriter;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import im.actor.model.api.*;

public class UpdateUserOnline extends Update {

    public static final int HEADER = 0x7;
    public static UpdateUserOnline fromBytes(byte[] data) throws IOException {
        return Bser.parse(UpdateUserOnline.class, data);
    }

    private int uid;

    public UpdateUserOnline(int uid) {
        this.uid = uid;
    }

    public UpdateUserOnline() {

    }

    public int getUid() {
        return this.uid;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.uid = values.getInt(1);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.uid);
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
