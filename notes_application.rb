module Ehiemere
class NotesApplication

    attr_accessor :author
    attr_accessor :notes

    private
    def check_id note_id
    if !note_id.is_a? Integer
        puts "ID must be an integer"
    end
    end

    def errorHandler author
    raise "No Symbols or digits allowed " if @author.include? (/[\W\D]/)
    raise "Entry must be a string" if !@author.is_a? String
    raise "Author value must be put" if @author.empty? 
    
    end


    public
    def initialize author
     if author == ''
         raise "Please enter valid author name"
        elsif author.is_a? Integer
          raise "Please enter valid author name"
        elsif author.is_a? Float
          raise "Please enter valid author name"
        elsif author == nil
          raise "Please enter valid author name"
        elsif !author.is_a? String
          raise "Please enter valid author name"
        else
        @author = author
        @notes = []
     end
    end

    def create notes_content
        @notes << notes_content
    puts @notes
    end

    def list
        @notes.each { |notecontent|
          puts "Note ID: #{@notes.index(notecontent)}"
          puts "#{notecontent}"
            puts 
          puts "By Author #{@author}"
        }
    end
    

    def get note_id
        #arrays start from 0
        @note_id = note_id
        @notes[("#{@note_id}".to_i)]
    end


   def search search_text
        @notes.each { |notecontent|
            if notecontent.include?(search_text)
                "Showing results for search #{search_text}\n\nNote ID: #{@notes.index(notecontent)}\n\n#{notecontent}\n\nBy Author #{@author}"
            else
                raise "Text not found"
            end
        }
    end

    def delete note_id

        @notes.delete_at(@note_id)
        puts @notes
    end

    def edit(note_id, new_content)

            checkNoteId note_id
            checkNoteInput new_content
            checkifNoteExists note_id

            @notes[note_id] = new_content
    end

  end
end