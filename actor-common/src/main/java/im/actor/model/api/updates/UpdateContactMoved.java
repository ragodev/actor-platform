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

public class UpdateContactMoved extends Update {

    public static final int HEADER = 0x65;
    public static UpdateContactMoved fromBytes(byte[] data) throws IOException {
        return Bser.parse(UpdateContactMoved.class, data);
    }

    private int contactId;
    private int oldUid;
    private int uid;

    public UpdateContactMoved(int contactId, int oldUid, int uid) {
        this.contactId = contactId;
        this.oldUid = oldUid;
        this.uid = uid;
    }

    public UpdateContactMoved() {

    }

    public int getContactId() {
        return this.contactId;
    }

    public int getOldUid() {
        return this.oldUid;
    }

    public int getUid() {
        return this.uid;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.contactId = values.getInt(1);
        this.oldUid = values.getInt(3);
        this.uid = values.getInt(2);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.contactId);
        writer.writeInt(3, this.oldUid);
        writer.writeInt(2, this.uid);
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
